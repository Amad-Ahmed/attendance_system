// // ignore_for_file: use_build_context_synchronously

// import 'dart:async';
// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';

// import '../../../services/network/api_client.dart';
// import '../../../ui_kit/dialogs/chi_dialogs.dart';

// typedef ModelFromJsonParse = dynamic Function(Map<String, dynamic> resp);

// class GenericDataTableViewModel<T, T1> extends BaseViewModel {
//   final String refreshKey;
//   BuildContext context;
//   GenericDataTableViewModel(
//       this.context,
//       this.items,
//       this.fromJson,
//       this.request,
//       this.endPoint,
//       this.apiResponseType,
//       this.apiController,
//       this.refreshKey) {
//     debugPrint('IN ');
//     getController();
//     notificationReceive();
//     onRefresh();
//   }

//   getController() {
//     //for notifications
//     subscription = apiController.stream.listen((String data) {
//       debugPrint('IN GenericDataTableViewModel ________${data}________');
//       try {
//         request = jsonDecode(data);
//         onRefresh();
//         request['escalation_status'] = '';
//       } catch (e) {
//         request['search'] = data;
//         onRefresh();
//         request['search'] = '';
//       }
//     });
//   }

//   late final List<T> items;
//   Function(Map<String, dynamic>) fromJson;
//   Map<String, dynamic> request;
//   String endPoint;
//   var apiResponseType;
//   int offset = 30;
//   int totalRecords = 0;
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
//     request['search'] = '';
//   }

//   void createSnackBar(BuildContext context, String message) {
//     final snackBar =
//         SnackBar(content: Text(message), backgroundColor: Colors.red);
//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   }

//   void onRefresh() async {
//     setBusy(true);
//     request['page'] = 1;
//     var resp = await getDataFromApi();
//     if (resp != null) {
//       items.clear();
//       offset = 30;
//       apiResponseType = resp;
//       debugPrint('${apiResponseType.runtimeType}');
//       debugPrint('$apiResponseType');
//       items.addAll((apiResponseType.records));
//       debugPrint('$resp');
//     }
//     setBusy(false);
//   }

//   getDataFromApi() async {
//     APIResponse? resp;
//     resp = await ApiClient.get(
//         request: request, endPoint: endPoint, fromJson: fromJson);

//     if (resp['status'] == 'Ok') {
//       totalRecords = resp['data'].count;
//       final data = resp['data'];
//       debugPrint(data.toString());
//       return data;
//     } else {
//       log('---------- Data fetching error ----------');
//       log(resp['ErrorMessage']);
//       CHIDialogs.showErrorAlert(context,
//           title: 'Error', message: resp['ErrorMessage'], onConfirm: () {
//         Navigator.pop(context);
//         Navigator.pop(context);
//       });
//       return null;
//     }
//   }

// //--------------------------------------------------------------------
//   void checkForLazyLoading(int index) async {
//     debugPrint(
//         'Index $index++++++++ Offset $offset-------${offset - 1}//////////${items.length}');
//     if (index == (offset - 1) && index != totalRecords - 1) {
//       request['page'] = request['page'] + 1;
//       var resp = await getDataFromApi();
//       if (resp != null) {
//         apiResponseType = resp;
//         items.addAll((apiResponseType.records));
//         // debugPrint('${apiResponseType.runtimeType}');
//         // debugPrint('$apiResponseType');
//         // debugPrint('$resp');
//         debugPrint("${items.length}");
//         offset += 30;
//       }
//       notifyListeners();
//     }
//   }

//   notificationReceive() {
//     // CCHomeViewModel.subscription = CCHomeViewModel.notificationController.stream.listen((String data) async {
//     //   debugPrint('IN Home Notification  +++++++++++++++__________________++++++++++++$data+++++');
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
