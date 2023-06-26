// import 'dart:async';
// import '../../../ui_kit/no_record/no_record.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:stacked/stacked.dart';
// import '../../../constants/chi_styles.dart';
// import '../../input_fields/chi_text_field.dart';
// import '../../loading/chi_progress_indicator.dart';
// import 'generic_table_vm.dart';

// // ignore: must_be_immutable
// class GenericDataTable<T, T1> extends StackedView<GenericDataTableViewModel> {
//   GenericDataTable(
//       {Key? key,
//       required this.title,
//       this.search = false,
//       required this.dataList,
//       required this.cellDesign,
//       this.swipeToDelete = false,
//       required this.fromJson,
//       required this.request,
//       required this.endPoint,
//       this.onTap,
//       this.refreshKey = '',
//       this.apiResponseType,
//       required this.apiController})
//       : super(key: key);

//   final String title;
//   final bool search;
//   final List<T> dataList;
//   final Function(int) cellDesign;
//   Timer? t;
//   final bool swipeToDelete;
//   final Function(Map<String, dynamic>) fromJson;
//   final Map<String, dynamic> request;
//   final String endPoint;
//   final VoidCallback? onTap;
//   final String refreshKey;
//   final dynamic apiResponseType;
//   final StreamController<String> apiController;

//   @override
//   bool get initialiseSpecialViewModelsOnce => true;

//   @override
//   Widget builder(BuildContext context, GenericDataTableViewModel viewModel,
//       Widget? child) {
//     return Column(
//       children: [
//         Visibility(
//           visible: viewModel.isBusy,
//           child: const CHIProgressIndicator(true),
//         ),
//         Visibility(
//           visible: search,
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
//             child: CHITextField(
//               hintText: 'Search',
//               controller: viewModel.seachController,
//               cursorColor: Colors.grey,
//               suffixIcon: SvgPicture.asset('assets/icons/search.svg',
//                   color: CHIStyles.lightGreyColor, fit: BoxFit.scaleDown),
//               onChanged: (value) {
//                 if (t != null) {
//                   t!.cancel();
//                   debugPrint('Canceling timer $value');
//                 }
//                 t = Timer(const Duration(seconds: 1), () {
//                   debugPrint('Currently Written $value');
//                   viewModel.search(value!.trim());
//                 });
//               },
//             ),
//           ),
//         ),
//         Expanded(
//           child: RefreshIndicator(
//             onRefresh: () async {
//               viewModel.onRefresh();
//             },
//             child: viewModel.items.isEmpty && !viewModel.isBusy
//                 ? const NoRecord() //() async => viewModel.onRefresh()
//                 : ListView.builder(
//                     padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
//                     itemCount: viewModel.items.length,
//                     itemBuilder: (context, index) {
//                       viewModel.checkForLazyLoading(index);
//                       if (index == viewModel.offset - 1) {
//                         return Center(
//                           child: CircularProgressIndicator(
//                             color: CHIStyles.primaryColor,
//                           ),
//                         );
//                       }
//                       return swipeToDelete
//                           ? Slidable(
//                               key: UniqueKey(),
//                               startActionPane: ActionPane(
//                                 extentRatio: 0.25,
//                                 motion: const ScrollMotion(),
//                                 children: [
//                                   SlidableAction(
//                                     padding: EdgeInsets.zero,
//                                     spacing: 0,
//                                     onPressed: (context) {},
//                                     backgroundColor: const Color(0xFF21B7CA),
//                                     foregroundColor: Colors.white,
//                                     icon: Icons.share,
//                                     label: 'Share',
//                                   ),
//                                 ],
//                               ),
//                               endActionPane: ActionPane(
//                                 extentRatio: 0.25,
//                                 motion: const ScrollMotion(),
//                                 children: [
//                                   SlidableAction(
//                                     onPressed: (context) =>
//                                         viewModel.removeItem(index),
//                                     backgroundColor: const Color(0xFFFE4A49),
//                                     foregroundColor: Colors.white,
//                                     icon: Icons.delete,
//                                     label: 'Delete',
//                                   ),
//                                 ],
//                               ),
//                               child: cellDesign(index),
//                             )
//                           : cellDesign(index);
//                       //
//                     },
//                   ),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   GenericDataTableViewModel viewModelBuilder(BuildContext context) {
//     return GenericDataTableViewModel<T, T1>(context, dataList, fromJson,
//         request, endPoint, apiResponseType, apiController, refreshKey);
//   }
// }
