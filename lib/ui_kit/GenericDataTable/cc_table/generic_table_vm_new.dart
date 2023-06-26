// import 'dart:async';
// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';

// // import '../../../screens/landing_page/main_vm.dart';
// import '../../../services/network/api_client_nest.dart';

// typedef ModelFromJsonParse = dynamic Function(Map<String, dynamic> resp);

// class GenericDataTableViewModel<T, T1> extends BaseViewModel {
//   final bool isPost;
//   final String refreshKey;
//   GenericDataTableViewModel(
//       this.items,
//       this.fromJson,
//       this.request,
//       this.endPoint,
//       this.apiResponseType,
//       this.apiController,
//       this.isPost,
//       this.refreshKey) {
//     debugPrint('IN GenericDataTableViewModel +++++++++++++++');
//     getController();
//     notificationReceive();
//     onRefresh();
//   }

//   getController() {
//     //for notifications
//     subscription = apiController.stream.listen((String data) {
//       debugPrint(
//           'IN GenericDataTableViewModel +++++++++++++++________${data}__________+++++++++++++++++');
//       try {
//         request = jsonDecode(data);
//         onRefresh();
//       } catch (e) {
//         request['search'] = data;
//         onRefresh();
//       }
//     });
//   }

//   late final List<T> items;
//   Function(Map<String, dynamic>) fromJson;
//   Map<String, dynamic> request;
//   String endPoint;
//   var apiResponseType;
//   int offset = 1;
//   bool loadMore = false;
//   TextEditingController seachController = TextEditingController();
//   final StreamController<String> apiController;
//   late StreamSubscription subscription;

//   void removeItem(int index) {
//     items.removeAt(index);
//     notifyListeners();
//   }

//   void search(String query) {
//     debugPrint(query);
//     request['search'] = query;
//     onRefresh();
//   }

//   void createSnackBar(BuildContext context, String message) {
//     final snackBar =
//         SnackBar(content: Text(message), backgroundColor: Colors.red);
//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   }

//   void onRefresh() async {
//     setBusy(true);
//     var resp = await getDataFromApi();
//     if (resp != null) {
//       request['page'] = 1;
//       items.clear();
//       offset = 0;
//       apiResponseType = resp.records;
//       debugPrint('${apiResponseType.runtimeType}');
//       debugPrint('$apiResponseType');
//       items.addAll((apiResponseType));
//       debugPrint('$resp');
//     }
//     setBusy(false);
//   }

//   getDataFromApi() async {
//     APIResponse? resp;
//     if (isPost) {
//       resp = await ApiClient.post(
//           request: request, endPoint: endPoint, fromJson: fromJson);
//     } else {
//       resp = await ApiClient.get(
//           request: request, endPoint: endPoint, fromJson: fromJson);
//       loadMore = false;
//       //resp['data'].loadMore ?? false;
//     }
//     if (resp['status'] == 'Ok') {
//       final data = resp['data'];
//       debugPrint(data.toString());
//       return data;
//     } else {
//       log('---------- Data fetching error ----------');
//       log(resp['ErrorMessage']);
//       return null;
//       // CHIDialogs.showErrorAlert(context, title: title, message: message)
//     }
//   }

// //--------------------------------------------------------------------
//   void checkForLazyLoading(int index) async {
//     debugPrint(
//         'Index $index++++++++ Offset $offset-------${offset - 1}//////////${items.length}');
//     if ((isPost || loadMore) && (index == (offset - 1))) {
//       var resp = await getDataFromApi();
//       if (resp != null) {
//         request['page'] = offset;
//         apiResponseType = resp.data;
//         items.addAll((apiResponseType));
//         debugPrint('${apiResponseType.runtimeType}');
//         debugPrint('$apiResponseType');
//         debugPrint('$resp');
//         debugPrint("${items.length}");
//         offset += 1;
//       }
//       notifyListeners();
//     }
//   }

//   notificationReceive() {
//     // MainViewModel.subscription =
//     //     MainViewModel.notificationController.stream.listen((String data) async {
//     //   debugPrint(
//     //       'IN Home Notification  +++++++++++++++__________________++++++++++++$data+++++');
//     //   if (data == refreshKey) {
//     //     debugPrint('=========================>>>>>>>>>> message received');
//     //     onRefresh();
//     //   }
//     // });
//   }

//   @override
//   void dispose() {
//     subscription.cancel();
//     super.dispose();
//   }
// }
