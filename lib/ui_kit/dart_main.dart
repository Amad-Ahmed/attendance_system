// import 'package:charms_app/services/network/api_client2.dart';

// import '../app/auth/login/model/login_model.dart';

// void main() async {
//   print('Hello main');
//   ApiClient.create('charms-qa', 'cognitivehealthintl.com/', ApiClient.cancelToken.isCancelled);
//   print("----------- API Client Created -----------");

//   final resp = await ApiClient.login(LoginResult.request('usman_n', 'Usman@1'));
//   print("$resp");

//   // onUploadFile();
// }

// // onUploadFile()async{
// //     FormData formData =
// //         FormData.fromMap({"UserFile": await MultipartFile.fromFile(pdfFilePath!.path!, filename: pdfFilePath!.name)});
// //     final resp = await ApiClient.postMultipart(
// //         request: formData, endPoint: 'api/user_files/Upload', fromJson: FileResponse.fromMap);

// //     if (resp['status'] == 'Ok') {
// //       fileResponse = resp['data'];
// //       debugPrint('>>>>>>>>>>>>>>>>file Uploaded >>>>>URL : ${fileResponse!.fileUrl}');
// //     }
// // }
