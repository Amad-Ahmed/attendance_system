// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';

// import '../../../ui_kit/scaffold/chi_scaffold.dart';
// import '../../auth/login/model/login_model.dart';
// import '../../constants/chi_styles.dart';
// import '../../services/network/api_client.dart';
// import '../../utils/preferences.dart';
// import '../card/chi_card.dart';
// import 'more_widgets_vu.dart';

// class MoreWidgetsViewModel extends BaseViewModel {
//   MoreWidgetsViewModel() {
//     login();
//   }

//   login() async {
//     // await loginFunc('usman-stable', "923123456789", "Testing@1");
//     await loginFunc('usman-stable', "090078601", "Testing@1");
//   }

//   List<CHIWidget> widgets = [
//     CHIWidget(title: 'CHI Appbar', route: const CHIAppBarView()),
//     CHIWidget(
//         title: 'CHI Progress Indicator',
//         route: const CHIProgressIndicatorView()),
//     CHIWidget(title: 'CHI TextField', route: const CHITextFieldView()),
//     CHIWidget(title: 'CHI Buttons', route: const CHIButtonView()),
//     CHIWidget(title: 'CHI Drop Down Sheet', route: const CHIDropDownView()),
//     CHIWidget(title: 'CHI Generic List', route: CHIListView()),
//     CHIWidget(
//         title: 'CHI Shimmer Loading', route: const CHIShimmerLoadingView()),
//     CHIWidget(title: 'CHI Date Picker ', route: const CHIDatePickerView()),
//     CHIWidget(title: 'CHI Dialogs', route: const CHIPlatformAlertDialog()),
//     CHIWidget(
//         title: 'CHI Selection Widgets', route: const CHISelectionWidgets()),
//     CHIWidget(title: 'CHI TabBar', route: const CHITabBarView()),
//     CHIWidget(title: 'CHI Nav Bar', route: const CHINavBarView()),
//     CHIWidget(
//         title: 'CHI Scaffold', route: const CHIScaffold(body: SizedBox())),
//     CHIWidget(title: 'CHI Slider', route: const CHISliderView()),
//     // CHIWidget(title: 'File Picker', route: const CHIFilePickerView()),
//   ];

//   loginFunc(String siteCode, String mobile, String password) async {
//     debugPrint("hello world ..... ");
//     final request = {
//       'mobile': mobile,
//       'password': password,
//       'fcmToken': 'fcmToken'
//     };
//     if (Platform.isAndroid) {
//       request['deviceId'] = 'androidInfo.id';
//       request['deviceName'] = 'androidInfo.manufacturer';
//       request['deviceModel'] = 'androidInfo.model';
//       request['deviceType'] = 'Android';
//     }

//     final resp = await ApiClient.login(request, fromJson: LoginResult.fromJson);
//     final LoginResult result =
//         resp['data'] ?? LoginResult(status: 'Error', message: resp['message']);
//     ApiClient.instance.authToken = result.authToken!;
//   }
// }

// class CHIWidget {
//   final String title;
//   final Widget route;
//   CHIWidget({required this.title, required this.route});
// }

// // class PatientList {
// //   List<Patient>? data;
// //   bool? loadMore;
// //
// //   PatientList({this.data, this.loadMore});
// //
// //   PatientList.fromJson(Map<String, dynamic> json) {
// //     if (json['data'] != null) {
// //       data = <Patient>[];
// //       json['data'].forEach((v) {
// //         data!.add(Patient.fromJson(v));
// //       });
// //     }
// //     loadMore = json['load_more'];
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = {};
// //     if (this.data != null) {
// //       data['data'] = this.data!.map((v) => v.toJson()).toList();
// //     }
// //     data['load_more'] = loadMore;
// //     return data;
// //   }
// // }
// //
// // class Patient {
// //   String? patientId;
// //   String? patientName;
// //   String? registrationNo;
// //   String? gender;
// //   int? birthDate;
// //   bool? liveObservation;
// //
// //   Patient({
// //     this.patientId,
// //     this.patientName,
// //     this.registrationNo,
// //     this.gender,
// //     this.birthDate,
// //     this.liveObservation,
// //   });
// //
// //   Patient.fromJson(Map<String, dynamic> json) {
// //     patientId = json['patient_id'];
// //     patientName = json['patient_name'];
// //     registrationNo = json['registration_no'];
// //     gender = json['gender'];
// //     birthDate = json['birth_date'];
// //     liveObservation = json['live_observation'];
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = {};
// //     data['patient_id'] = patientId;
// //     data['patient_name'] = patientName;
// //     data['registration_no'] = registrationNo;
// //     data['gender'] = gender;
// //     data['birth_date'] = birthDate;
// //     data['live_observation'] = liveObservation;
// //
// //     return data;
// //   }
// //
// //   static Map<String, dynamic> request = {
// //     'page': 1,
// //     'per_page': 30,
// //     'doctorId': 'ALI-D-USER-ID'
// //   };
// // }

// class PatientCellDesign extends StatelessWidget {
//   final Patient patient;
//   const PatientCellDesign(this.patient, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: CHICard(
//           // onTap: () => CHIRouter.push(context, DashboardView(patient.patientId!)),
//           borderRadius: CHIStyles.cardRadius,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Flexible(
//                       child: Text("${patient.user!.firstName}",
//                           style: CHIStyles.mdMediumStyle,
//                           overflow: TextOverflow.ellipsis)),
//                 ],
//               ),
//               const SizedBox(height: 4),
//               Text('${patient.hospitalNo}',
//                   style: CHIStyles.smNormalStyle
//                       .copyWith(color: const Color(0xff98A2B3))),
//               const SizedBox(height: 4),
//               Text(
//                   "${getGender(patient.user!.gender)} | ${getAge(patient.user!.birthDate)}",
//                   style: CHIStyles.smNormalStyle
//                       .copyWith(color: const Color(0xff98A2B3))),
//             ],
//           )),
//     );
//   }

//   String getGender(String? gender) {
//     return gender ?? '--';
//   }

//   String getAge(int? age) {
//     return age == null ? '--' : '${Preferences.calculateAge(age)}';
//   }
// }

// class Patients {
//   int? pages;
//   int? count;
//   List<Patient>? records;

//   Patients({this.pages, this.count, this.records});

//   Patients.fromJson(Map<String, dynamic> json) {
//     pages = json['pages'];
//     count = json['count'];
//     if (json['records'] != null) {
//       records = <Patient>[];
//       json['records'].forEach((v) {
//         records!.add(Patient.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['pages'] = this.pages;
//     data['count'] = this.count;
//     if (this.records != null) {
//       data['records'] = this.records!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Patient {
//   String? patientId;
//   String? patientType;
//   int? patientCode;
//   String? userId;
//   String? fatherName;
//   String? husbandName;
//   String? passportNo;
//   String? bloodGroup;
//   int? height;
//   int? age;
//   String? hospitalNo;
//   String? externalHn;
//   bool? isDemoPatient;
//   bool? termsAgreed;
//   String? doctorNotes;
//   String? admissionStatus;
//   String? guardianId;
//   String? medicareId;
//   String? memberId;
//   String? groupNo;
//   String? insurancePlanId;
//   User? user;

//   Patient(
//       {this.patientId,
//       this.patientType,
//       this.patientCode,
//       this.userId,
//       this.fatherName,
//       this.husbandName,
//       this.passportNo,
//       this.bloodGroup,
//       this.height,
//       this.age,
//       this.hospitalNo,
//       this.externalHn,
//       this.isDemoPatient,
//       this.termsAgreed,
//       this.doctorNotes,
//       this.admissionStatus,
//       this.guardianId,
//       this.medicareId,
//       this.memberId,
//       this.groupNo,
//       this.insurancePlanId,
//       this.user});

//   Patient.fromJson(Map<String, dynamic> json) {
//     patientId = json['patientId'];
//     patientType = json['patientType'];
//     patientCode = json['patientCode'];
//     userId = json['userId'];
//     fatherName = json['fatherName'];
//     husbandName = json['husbandName'];
//     passportNo = json['passportNo'];
//     bloodGroup = json['bloodGroup'];
//     height = json['height'];
//     age = json['age'];
//     hospitalNo = json['hospitalNo'];
//     externalHn = json['externalHn'];
//     isDemoPatient = json['isDemoPatient'];
//     termsAgreed = json['termsAgreed'];
//     doctorNotes = json['doctorNotes'];
//     admissionStatus = json['admissionStatus'];
//     guardianId = json['guardianId'];
//     medicareId = json['medicareId'];
//     memberId = json['memberId'];
//     groupNo = json['groupNo'];
//     insurancePlanId = json['insurancePlanId'];
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['patientId'] = this.patientId;
//     data['patientType'] = this.patientType;
//     data['patientCode'] = this.patientCode;
//     data['userId'] = this.userId;
//     data['fatherName'] = this.fatherName;
//     data['husbandName'] = this.husbandName;
//     data['passportNo'] = this.passportNo;
//     data['bloodGroup'] = this.bloodGroup;
//     data['height'] = this.height;
//     data['age'] = this.age;
//     data['hospitalNo'] = this.hospitalNo;
//     data['externalHn'] = this.externalHn;
//     data['isDemoPatient'] = this.isDemoPatient;
//     data['termsAgreed'] = this.termsAgreed;
//     data['doctorNotes'] = this.doctorNotes;
//     data['admissionStatus'] = this.admissionStatus;
//     data['guardianId'] = this.guardianId;
//     data['medicareId'] = this.medicareId;
//     data['memberId'] = this.memberId;
//     data['groupNo'] = this.groupNo;
//     data['insurancePlanId'] = this.insurancePlanId;
//     if (this.user != null) {
//       data['user'] = this.user!.toJson();
//     }
//     return data;
//   }

//   static Map<String, dynamic> request = {
//     'page': 1,
//     'per_page': 30,
//     // 'doctorId': 'ALI-D-USER-ID'
//     'facility': false
//   };
// }

// class User {
//   String? userId;
//   String? username;
//   String? password;
//   String? firstName;
//   String? image;
//   String? title;
//   String? middleName;
//   String? lastName;
//   String? gender;
//   int? birthDate;
//   String? email;
//   String? mobile;
//   String? phone;
//   String? nic;
//   String? address1;
//   String? address2;
//   String? zipCode;
//   bool? isActivated;
//   bool? emailVerified;
//   bool? phoneVerified;
//   bool? useTwoFactor;
//   String? otpSecret;
//   String? emergencyContactPerson;
//   String? emergencyContactPhone;
//   int? userInt;
//   int? userDate;
//   String? userString;
//   int? userFloat;
//   bool? isDeleted;
//   int? dateCreated;
//   int? dateUpdated;

//   User(
//       {this.userId,
//       this.username,
//       this.password,
//       this.firstName,
//       this.image,
//       this.title,
//       this.middleName,
//       this.lastName,
//       this.gender,
//       this.birthDate,
//       this.email,
//       this.mobile,
//       this.phone,
//       this.nic,
//       this.address1,
//       this.address2,
//       this.zipCode,
//       this.isActivated,
//       this.emailVerified,
//       this.phoneVerified,
//       this.useTwoFactor,
//       this.otpSecret,
//       this.emergencyContactPerson,
//       this.emergencyContactPhone,
//       this.userInt,
//       this.userDate,
//       this.userString,
//       this.userFloat,
//       this.isDeleted,
//       this.dateCreated,
//       this.dateUpdated});

//   User.fromJson(Map<String, dynamic> json) {
//     userId = json['userId'];
//     username = json['username'];
//     password = json['password'];
//     firstName = json['firstName'];
//     image = json['image'];
//     title = json['title'];
//     middleName = json['middleName'];
//     lastName = json['lastName'];
//     gender = json['gender'];
//     birthDate = json['birthDate'];
//     email = json['email'];
//     mobile = json['mobile'];
//     phone = json['phone'];
//     nic = json['nic'];
//     address1 = json['address1'];
//     address2 = json['address2'];
//     zipCode = json['zipCode'];
//     isActivated = json['isActivated'];
//     emailVerified = json['emailVerified'];
//     phoneVerified = json['phoneVerified'];
//     useTwoFactor = json['useTwoFactor'];
//     otpSecret = json['otpSecret'];
//     emergencyContactPerson = json['emergencyContactPerson'];
//     emergencyContactPhone = json['emergencyContactPhone'];
//     userInt = json['userInt'];
//     userDate = json['userDate'];
//     userString = json['userString'];
//     userFloat = json['userFloat'];
//     isDeleted = json['isDeleted'];
//     dateCreated = json['dateCreated'];
//     dateUpdated = json['dateUpdated'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['userId'] = this.userId;
//     data['username'] = this.username;
//     data['password'] = this.password;
//     data['firstName'] = this.firstName;
//     data['image'] = this.image;
//     data['title'] = this.title;
//     data['middleName'] = this.middleName;
//     data['lastName'] = this.lastName;
//     data['gender'] = this.gender;
//     data['birthDate'] = this.birthDate;
//     data['email'] = this.email;
//     data['mobile'] = this.mobile;
//     data['phone'] = this.phone;
//     data['nic'] = this.nic;
//     data['address1'] = this.address1;
//     data['address2'] = this.address2;
//     data['zipCode'] = this.zipCode;
//     data['isActivated'] = this.isActivated;
//     data['emailVerified'] = this.emailVerified;
//     data['phoneVerified'] = this.phoneVerified;
//     data['useTwoFactor'] = this.useTwoFactor;
//     data['otpSecret'] = this.otpSecret;
//     data['emergencyContactPerson'] = this.emergencyContactPerson;
//     data['emergencyContactPhone'] = this.emergencyContactPhone;
//     data['userInt'] = this.userInt;
//     data['userDate'] = this.userDate;
//     data['userString'] = this.userString;
//     data['userFloat'] = this.userFloat;
//     data['isDeleted'] = this.isDeleted;
//     data['dateCreated'] = this.dateCreated;
//     data['dateUpdated'] = this.dateUpdated;
//     return data;
//   }
// }
