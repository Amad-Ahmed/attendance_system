import 'dart:async';
import '../../../ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import '../../../constants/chi_styles.dart';
import '../../input_fields/chi_text_field.dart';
import '../../loading/chi_progress_indicator.dart';
import 'cc_table_vm.dart';

// ignore: must_be_immutable
abstract class CCTableVU<T> extends StackedView<CCTableVM> {
  CCTableVU(
    this.actions, {
    Key? key,
    this.search = true,
    this.swipeToDelete = true,
    this.pageSize = 10,
    this.onTap,
    this.refreshKey = '',
  }) : super(key: key);

  final bool search;
  Timer? t;
  final bool swipeToDelete;

  final int pageSize;
  Map<String, dynamic> actions;
  final VoidCallback? onTap;
  final String refreshKey;
  Map<String, dynamic> req = {};

  final StreamController<String> apiController =
      StreamController<String>.broadcast();
  // Function(Map<String, dynamic>)? thePangaFunctionPtr;

  @override
  bool get initialiseSpecialViewModelsOnce => true;

  @override
  Widget builder(BuildContext context, CCTableVM viewModel, Widget? child) {
    return CHIScaffold(
      body: Column(
        children: [
          Visibility(
            visible: viewModel.isBusy,
            child: const CHIProgressIndicator(true),
          ),
          Visibility(
            visible: search,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: CHITextField(
                hintText: 'Search',
                controller: viewModel.seachController,
                cursorColor: Colors.grey,
                suffixIcon: SvgPicture.asset('assets/icons/search.svg',
                    color: CHIStyles.lightGreyColor, fit: BoxFit.scaleDown),
                onChanged: (value) {
                  if (t != null) {
                    t!.cancel();
                    debugPrint('Canceling timer $value');
                  }
                  t = Timer(const Duration(seconds: 1), () {
                    debugPrint('Currently Written $value');
                    viewModel.searchString = value!.trim();
                    onRefresh(viewModel);
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                onRefresh(viewModel);
              },
              child: viewModel.items.isEmpty && !viewModel.isBusy
                  ? Center(
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/icons/not_found.png'),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      itemCount: viewModel.items.length,
                      itemBuilder: (context, index) {
                        bool loadMore = viewModel.checkForLazyLoading(index);
                        if (loadMore) {
                          loadDataOfVU(viewModel);
                          // viewModel.getDataFromApi();
                          return Center(
                            child: CircularProgressIndicator(
                              color: CHIStyles.primaryColor,
                            ),
                          );
                        }

                        return swipeToDelete
                            ? Slidable(
                                key: UniqueKey(),
                                startActionPane: ActionPane(
                                  extentRatio: 0.25,
                                  motion: const ScrollMotion(),
                                  children: [
                                    SlidableAction(
                                      padding: EdgeInsets.zero,
                                      spacing: 0,
                                      onPressed: (context) {},
                                      backgroundColor: const Color(0xFF21B7CA),
                                      foregroundColor: Colors.white,
                                      icon: Icons.share,
                                      label: 'Share',
                                    ),
                                  ],
                                ),
                                endActionPane: ActionPane(
                                  extentRatio: 0.25,
                                  motion: const ScrollMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (context) =>
                                          viewModel.removeItem(index),
                                      backgroundColor: const Color(0xFFFE4A49),
                                      foregroundColor: Colors.white,
                                      icon: Icons.delete,
                                      label: 'Delete',
                                    ),
                                  ],
                                ),
                                child: cellDesign(viewModel.items[index]),
                              )
                            : cellDesign(viewModel.items[index]);
                        //
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  CCTableVM viewModelBuilder(BuildContext context) {
    CCTableVM viewModel = CCTableVM<T>(pageSize, apiController, refreshKey);
    loadDataOfVU(viewModel); //load for the first time.
    return viewModel;
  }

  void onRefresh(CCTableVM viewModel) async {
    viewModel.setBusy(true);
    viewModel.currentPage = 0;
    viewModel.items.clear();
    await loadDataOfVU(viewModel);
    viewModel.setBusy(false);
  }

  cellDesign(T p);

  loadDataOfVU(CCTableVM viewModel) async {
    req["page"] = viewModel.currentPage + 1;
    req["per_page"] = viewModel.pageSize;
    req["search"] = viewModel.searchString;
    var resp = await loadData(req);
    viewModel.setLoadMoreFlag(resp);
  }

  loadData(Map<String, dynamic> v);
}
