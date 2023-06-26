// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';
// import '../../../constants/chi_styles.dart';
// import '../../app/screens/command_center/observations/model/observation_model.dart';
// import '../appBar/chi_appbar.dart';
// import '../card/chi_card.dart';
// import '../scaffold/chi_scaffold.dart';
// import 'generic_table/generic_table_vu.dart';
// import 'home_vm.dart';

// class HomeVU extends StackedView<HomeVM> {
//   late HomeVM vm;

//   HomeVU({super.key});

//   Widget cellDesign(int index) {
//     // debugPrint('I am in main $index');
//     return type2CellDesign(patientName: vm.items[index].patientName!, orderable: vm.items[index].serviceName!);
//   }

//   @override
//   Widget builder(BuildContext context, HomeVM viewModel, Widget? child) {
//     return MaterialApp(
//       title: 'CHI DataTable',
//       theme: ThemeData.light(),
//       debugShowCheckedModeBanner: false,
//       home: CHIScaffold(
//         appBar: const CHIAppBar(title: 'Generic Table'),
//         body: GenericDataTable<Observation, ObservationList>(
//           title: "Flutter Art",
//           search: true,
//           dataList: viewModel.items,
//           cellDesign: cellDesign,
//           swipeToDelete: true,
//           fromJson: ObservationList.fromJson,
//           request: Observation.observationRequest,
//           endPoint: 'api/employee_app/GetObservations',
//           apiResponseType: viewModel.mObservationList,
//           apiController: StreamController<String>.broadcast(),
//         ),
//       ),
//     );
//   }

//   @override
//   HomeVM viewModelBuilder(BuildContext context) {
//     vm = HomeVM();
//     // vm.getDoctorProfile( "api/doctor_app/GetProfile", Doctor.fromMap(resp))
//     return vm;
//   }
// }

// Widget type1CellDesign(
//     {required String textHeading,
//     BuildContext? context,
//     String? urlImage,
//     String? textHeading2,
//     String? rightLabel,
//     String? rightLabel2}) {
//   return ListTile(
//     title: Text(textHeading),
//     subtitle: Text(textHeading2!),
//     trailing: null,
//   );
// }

// Widget type2CellDesign({required String patientName, required String orderable}) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 4),
//     child: CHICard(
//         onTap: () => debugPrint(patientName),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(orderable, style: CHIStyles.lgMediumStyle),
//             const SizedBox(height: 6),
//             Text(
//               patientName,
//               style: CHIStyles.mdNormalStyle.copyWith(color: Colors.grey),
//             )
//           ],
//         )),
//   );
// }
