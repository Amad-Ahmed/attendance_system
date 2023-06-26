import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
// import '../../../screens/landing_page/main_vm.dart';

typedef ModelFromJsonParse = dynamic Function(Map<String, dynamic> resp);

class GCCTableVM<T> extends BaseViewModel {
  final String refreshKey;

  late List<T> items = [];

  int pageSize;
  late String searchString;

  int currentPage = -1;
  bool loadMore = false;
  TextEditingController seachController = TextEditingController();
  final StreamController<String> apiController;
  late StreamSubscription subscription;

  GCCTableVM(this.pageSize, this.apiController, this.refreshKey) {
    currentPage = 0;
    loadMore = true;
    searchString = "";
    debugPrint('IN GenericDataTableViewModel3 +++++++++++++++');
    getController();
    notificationReceive();
    // onRefresh();
  }

  getController() {
    subscription = apiController.stream.listen((String data) {
      debugPrint(
          'IN GCCTableViewModel +++++++++++++++________${data}__________+++++++++++++++++');
      try {
        pageSize = jsonDecode(data);
        // onRefresh();
      } catch (e) {
        // pageSize['search'] = data;
        // onRefresh();
      }
    });
  }

  void removeItem(int index) {
    items.removeAt(index);
    notifyListeners();
  }

  void createSnackBar(BuildContext context, String message) {
    final snackBar =
        SnackBar(content: Text(message), backgroundColor: Colors.red);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  setLoadMoreFlag(resp) async {
    int pages = resp['pages'];
    items.addAll(resp['items']);
    currentPage += 1;
    if (currentPage < pages) {
      loadMore = true;
    } else {
      loadMore = false;
    }
    notifyListeners();
  }

//--------------------------------------------------------------------
  bool checkForLazyLoading(int index) {
    // debugPrint(        'Index $index ++++++++ Offset '); // -------${offset - 1}//////////${items.length}');
    if (loadMore && (index == (currentPage * pageSize - 1))) {
      return true;
    }
    return false;
  }

  notificationReceive() {
    // MainViewModel.subscription = MainViewModel.notificationController.stream.listen((String data) async {
    //   debugPrint('IN Home Notification  +++++++++++++++__________________++++++++++++$data+++++');
    //   if (data == refreshKey) {
    //     debugPrint('=========================>>>>>>>>>> message received');
    //     // onRefresh();
    //   }
    // });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
}
