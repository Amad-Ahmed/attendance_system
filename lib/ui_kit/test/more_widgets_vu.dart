// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:stacked/stacked.dart';

// import '../../../constants/chi_styles.dart';
// import '../../../ui_kit/appBar/chi_appbar.dart';
// import '../../../ui_kit/bottomsheet/drop_down_bottom_sheet.dart';
// import '../../../ui_kit/buttons/chi_button.dart';
// import '../../../ui_kit/buttons/loading_button.dart';
// import '../../../ui_kit/card/chi_card.dart';
// import '../../../ui_kit/date_picker/chi_date_picker.dart';
// import '../../../ui_kit/dialogs/chi_dialogs.dart';
// import '../../../ui_kit/input_fields/chi_text_field.dart';
// import '../../../ui_kit/loading/chi_progress_indicator.dart';
// import '../../../ui_kit/scaffold/chi_scaffold.dart';
// import '../../../ui_kit/selection_buttons/chi_check_box.dart';
// import '../../../ui_kit/selection_buttons/chi_radio_button.dart';
// import '../../../utils/routing/chi_router.dart';
// import '../../../utils/utils.dart';
// import '../GenericDataTable/generic_table/generic_table_vu.dart';
// import '../bottom_navbar/bottom_navbar.dart';
// import '../buttons/action_button.dart';
// import '../daterange_picker/daterange_picker.dart';
// import '../listview/generic_list_vu.dart';
// import '../slider/chi_slider.dart';
// import '../tabbar/chi_tabbar.dart';
// import 'more_widgets_vm.dart';

// class MoreWidgetsView extends StackedView<MoreWidgetsViewModel> {
//   const MoreWidgetsView({super.key});

//   @override
//   Widget builder(
//       BuildContext context, MoreWidgetsViewModel viewModel, Widget? child) {
//     return Scaffold(
//       appBar: const CHIAppBar(title: 'More Widgets'),
//       body: GenericListView<CHIWidget, Widget>(
//         dataList: viewModel.widgets,
//         widgets: viewModel.widgets
//             .map((widget) => settingCell(context, widget.title, widget.route))
//             .toList(),
//         onLoadMore: () async => false,
//         onRefresh: () async => debugPrint('Generic List Refreshed'),
//         onDelete: (widget) {},
//       ),
//     );
//   }

//   @override
//   MoreWidgetsViewModel viewModelBuilder(BuildContext context) {
//     return MoreWidgetsViewModel();
//   }
// }

// Widget settingCell(BuildContext context, String label, Widget route) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//     child: CHICard(
//       height: 56,
//       onTap: () => CHIRouter.push(context, route),
//       child: Text(label, style: CHIStyles.mdNormalStyle),
//     ),
//   );
// }

// ////////// ************* setting views ************** /////////////

// class CHIAppBarView extends StatelessWidget {
//   const CHIAppBarView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       appBar: CHIAppBar(title: 'CHI Appbars'),
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(height: 16),
//             CHIAppBar(
//                 title: 'App Bar without backbutton', addBackButton: false),
//             SizedBox(height: 16),
//             SizedBox(height: 16),
//             CHIAppBar(
//               title: 'App Bar without backbutton',
//               addBackButton: false,
//               actions: [ActionButton(icon: 'assets/icons/search.svg')],
//             ),
//             SizedBox(height: 16),
//             CHIAppBar(
//               title: 'App Bar without backbutton',
//               addBackButton: false,
//               actions: [
//                 ActionButton(icon: 'assets/icons/search.svg'),
//                 SizedBox(width: 16),
//                 ActionButton(icon: 'assets/icons/menu.svg')
//               ],
//             ),
//             SizedBox(height: 16),
//             CHIAppBar(
//                 title: 'App Bar',
//                 actions: [ActionButton(icon: 'assets/icons/menu.svg')]),
//             SizedBox(height: 16),
//             CHIAppBar(title: 'App Bar', actions: [
//               ActionButton(icon: 'assets/icons/search.svg'),
//               SizedBox(
//                 width: 16,
//               ),
//               ActionButton(icon: 'assets/icons/menu.svg')
//             ])
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CHITabBarView extends StatefulWidget {
//   const CHITabBarView({super.key});

//   @override
//   State<CHITabBarView> createState() => _CHITabBarViewState();
// }

// class _CHITabBarViewState extends State<CHITabBarView> {
//   List<String> tabs = ['Tab1', 'Tab2', 'Tab3'];
//   @override
//   Widget build(BuildContext context) {
//     return CHIScaffold(
//       appBar: const CHIAppBar(title: 'CHI Tab Bar'),
//       body: CHITabBar(
//         length: 3,
//         tabs: tabs,
//         // indexed: false,
//         children: List.generate(3, (index) => Text(tabs[index])),
//       ),
//     );
//   }
// }

// class CHINavBarView extends StatefulWidget {
//   const CHINavBarView({super.key});

//   @override
//   State<CHINavBarView> createState() => _CHINavBarViewState();
// }

// class _CHINavBarViewState extends State<CHINavBarView> {
//   final List<String> labels = ['Patients', 'Calls', 'Messagges', 'Calls'];
//   final List<String> icons = const [
//     'assets/icons/patients.svg',
//     'assets/icons/calls.svg',
//     'assets/icons/messages.svg',
//     'assets/icons/calls.svg',
//   ];
//   final List<Widget> widgets = const [
//     Text('data 1'),
//     Text('data 2'),
//     Text('data 3'),
//     Text('data 4'),
//   ];
//   int _currentIndex = 0;
//   onItemChanged(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CHIScaffold(
//       appBar: const CHIAppBar(title: 'CHI Nav Bar'),
//       body: Center(child: widgets.elementAt(_currentIndex)),
//       bottomNavigationBar: CHIBottomNavigationBar(
//         currentIndex: _currentIndex,
//         widgets: widgets,
//         icons: icons,
//         labels: labels,
//         itemChanged: onItemChanged,
//       ),
//     );
//   }
// }

// class CHIProgressIndicatorView extends StatelessWidget {
//   const CHIProgressIndicatorView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       appBar: CHIAppBar(title: 'CHI Progress Indicator'),
//       body: CHIProgressIndicator(true),
//     );
//   }
// }

// class CHITextFieldView extends StatefulWidget {
//   const CHITextFieldView({super.key});

//   @override
//   State<CHITextFieldView> createState() => _CHITextFieldViewState();
// }

// class _CHITextFieldViewState extends State<CHITextFieldView> {
//   String? _validator(value) {
//     if (value!.trim().isEmpty) {
//       return 'Type something';
//     }
//     return null;
//   }

//   bool _visible = true;
//   void _togglePassword() {
//     setState(() {
//       _visible = !_visible;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: const CHIAppBar(title: 'CHI TextField'),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(
//             16, 0, 16, MediaQuery.of(context).viewInsets.bottom + 16),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CHITextField(
//                 hintText: 'Welcome to CHI',
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 validator: _validator,
//               ),
//               const SizedBox(height: 8),
//               CHITextField(
//                 hintText: 'TextField with outside heading.',
//                 enableHeading: true,
//                 heading: 'Password',
//                 validator: _validator,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//               ),
//               const SizedBox(height: 8),
//               CHITextField(
//                 hintText: 'Number Text Field (Floating Point)',
//                 keyboardType: TextInputType.number,
//                 validator: _validator,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//               ),
//               const SizedBox(height: 8),
//               CHITextField(
//                 hintText: 'Number Text Field (Only Int)',
//                 keyboardType: TextInputType.number,
//                 inputFormat: <TextInputFormatter>[
//                   FilteringTextInputFormatter.digitsOnly,
//                 ],
//                 validator: _validator,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//               ),
//               const SizedBox(height: 8),
//               CHITextField(
//                 suffixIcon: GestureDetector(
//                   onTap: _togglePassword,
//                   child: SvgPicture.asset(
//                     'assets/icons/hide_password_icon.svg',
//                     fit: BoxFit.scaleDown,
//                   ),
//                 ),
//                 hintText: 'Password with icon',
//                 keyboardType: TextInputType.name,
//                 obscureText: _visible,
//                 validator: _validator,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//               ),
//               const SizedBox(height: 8),
//               CHITextField(
//                 hintText: 'Multiline Text Field',
//                 maxLine: 9,
//                 scrollPadding: EdgeInsets.only(
//                     bottom: MediaQuery.of(context).viewInsets.bottom),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CHIShimmerLoadingView extends StatelessWidget {
//   const CHIShimmerLoadingView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       appBar: CHIAppBar(title: 'Shimmer Loading'),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         child: CHIShimmerLoadingView(),
//       ),
//     );
//   }
// }

// class CHIButtonView extends StatefulWidget {
//   const CHIButtonView({super.key});

//   @override
//   State<CHIButtonView> createState() => _CHIButtonViewState();
// }

// class _CHIButtonViewState extends State<CHIButtonView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CHIAppBar(title: 'CHI Button'),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CHIButton(
//                 btnLabel: 'CHI Button', onTap: () => debugPrint('CHI Button')),
//             const SizedBox(height: 12),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Expanded(
//                   child: LoadingButton(
//                     btnLabel: 'Loading Button',
//                     // shape: BoxShape.circle,
//                     onTap: () => debugPrint('CHI Loading Button'),
//                   ),
//                 ),
//                 const SizedBox(width: 8),
//                 Expanded(
//                   child: LoadingButton(
//                     btnLabel: 'Loading Button',
//                     isLoading: true,
//                     // shape: BoxShape.circle,
//                     onTap: () => debugPrint('CHI Loading Button'),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 12),
//             CHIButton(
//                 btnLabel: 'CHI Button (Expanded)',
//                 expanded: true,
//                 onTap: () {
//                   debugPrint('CHI Button (Expanded)');
//                 }),
//             // const SizedBox(height: 10),
//             // CHIToggleButton(
//             //     widgets: _names,
//             //     onPressed: (int index) {
//             //       setState(() {
//             //         for (int i = 0; i < _selectedRadioValues.length; i++) {
//             //           _selectedRadioValues[i] = i == index;
//             //         }
//             //       });
//             //     },
//             //     values: _selectedRadioValues),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CHIPlatformAlertDialog extends StatefulWidget {
//   const CHIPlatformAlertDialog({super.key});

//   @override
//   State<CHIPlatformAlertDialog> createState() => _CHIPlatformAlertDialogState();
// }

// class _CHIPlatformAlertDialogState extends State<CHIPlatformAlertDialog> {
//   final List<Filter> _fruits = List.generate(
//     4,
//     (index) => Filter(label: 'Fruit ${index + 1}', isSelected: false),
//   );
//   _onFilteration(List<String>? fruits) {
//     Navigator.pop(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final List<String> fruits = ['Apple', 'Orange', 'Banana'];
//     return Scaffold(
//       appBar: const CHIAppBar(title: 'CHI Alert Dialog'),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CHIButton(
//               btnLabel: 'Success Alert',
//               onTap: () => CHIDialogs.showSuccessAlert(
//                 context,
//                 title: 'User Created',
//                 message:
//                     'This blog post has been published. Team members will be able to edit this post.',
//               ),
//             ),
//             const SizedBox(height: 12),
//             CHIButton(
//               btnLabel: 'Warning Alert',
//               onTap: () => CHIDialogs.showWarningAlert(
//                 context,
//                 title: 'Unsaved changes',
//                 message: 'Do you want to save or discard changes?',
//               ),
//             ),
//             const SizedBox(height: 12),
//             CHIButton(
//               btnLabel: 'Error Alert',
//               onTap: () => CHIDialogs.showErrorAlert(
//                 context,
//                 title: 'Delete User',
//                 message:
//                     'Are you sure you want to delete User? This action cannot be undo',
//               ),
//             ),
//             const SizedBox(height: 12),
//             CHIButton(
//               btnLabel: 'Filter Dialog',
//               onTap: () => CHIDialogs.showFilterDialog(
//                 context,
//                 title: 'Filter',
//                 filterList: _fruits,
//                 onApply: _onFilteration,
//                 onCancel: () => Navigator.pop(context),
//               ),
//             ),
//             const SizedBox(height: 12),
//             // CHIButton(
//             //   btnLabel: 'File Picker',
//             //   onTap: () => showFilePicker(context),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CHIDropDownView extends StatefulWidget {
//   const CHIDropDownView({super.key});

//   @override
//   State<CHIDropDownView> createState() => _CHIDropDownViewState();
// }

// class _CHIDropDownViewState extends State<CHIDropDownView> {
//   int? selectedIndex;
//   _onItemSelect(int index) {
//     setState(() {
//       selectedIndex = index;
//       Navigator.pop(context);
//     });
//   }

//   final List<Patient> _patients = [];
//   final Patients _patientList = Patients();
//   final _apiController = StreamController<String>.broadcast();
//   Widget _cellDesign(int index) {
//     return PatientCellDesign(_patients[index]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CHIAppBar(title: 'CHI DropDown Sheet'),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CHIDropDownBottomSheet(
//                 title: 'Select Item',
//                 items: _items,
//                 selectedIndex: selectedIndex,
//                 onTap: _onItemSelect),
//             const SizedBox(height: 12),
//             AdvancedBottomSheet(
//               title: 'patients',
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 12),
//                 child: GenericDataTable<Patient, Patients>(
//                   title: "Flutter Art",
//                   search: true,
//                   dataList: _patients,
//                   cellDesign: _cellDesign,
//                   fromJson: Patients.fromJson,
//                   request: Patient.request,
//                   // endPoint: '/patient-reports/get-patients-of-caregiver',
//                   endPoint: '/healthcare-facility/patients',
//                   apiResponseType: _patientList,
//                   apiController: _apiController,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AdvancedBottomSheet extends StatelessWidget {
//   final Widget child;
//   final String? title;
//   const AdvancedBottomSheet({super.key, required this.child, this.title});

//   @override
//   Widget build(BuildContext context) {
//     return CHICard(
//       height: 56,
//       child: const Text('Advanced Bottom Sheet'),
//       onTap: () => showModalBottomSheet(
//         context: context,
//         builder: (BuildContext context) => Container(
//           height: 500,
//           color: Colors.white,
//           child: Column(
//             children: [
//               // Padding(
//               //   padding: const EdgeInsets.all(8.0),
//               //   child: Text(title ?? '', style: CHIStyles.mdMediumStyle),
//               // ),
//               const Padding(
//                 padding: EdgeInsets.only(top: 12),
//                 child: CHIAppBar(title: 'Patients'),
//               ),
//               Expanded(child: child),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CHIDatePickerView extends StatelessWidget {
//   const CHIDatePickerView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CHIAppBar(title: 'CHI Dtae Picker'),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CHIDateTimePicker(
//               title: 'Select Date',
//               dateFormate: 'dd-MM-y',
//               pickerType: PickerType.date,
//               onGetDateTime: (date) => debugPrint('$date'),
//             ),
//             const SizedBox(height: 12),
//             CHIDateTimePicker(
//               title: 'Select Date',
//               dateFormate: 'MMM d, y',
//               pickerType: PickerType.date,
//               onGetDateTime: (date) => debugPrint('$date'),
//             ),
//             const SizedBox(height: 12),
//             CHIDateTimePicker(
//               title: 'Select Time',
//               dateFormate: 'hh:mm a',
//               pickerType: PickerType.time,
//               onGetDateTime: (date) => debugPrint('$date'),
//             ),
//             const SizedBox(height: 12),
//             CHIDateTimePicker(
//               title: 'Select Date & Time',
//               dateFormate: 'dd-MM-y h:mm a',
//               onGetDateTime: (date) => debugPrint('$date'),
//             ),
//             const SizedBox(height: 12),
//             CHIDateTimePicker(
//               title: 'Select Date & Time',
//               dateFormate: 'd MMM, y hh:mm a',
//               onGetDateTime: (dateTime) => debugPrint('$dateTime'),
//             ),
//             const SizedBox(height: 12),
//             CHIDateRangePicker(
//               title: 'Selct Date Ranges',
//               onGetRanges: (ranges) => debugPrint('$ranges'),
//               format: 'd MMM, y',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CHISelectionWidgets extends StatefulWidget {
//   const CHISelectionWidgets({super.key});

//   @override
//   State<CHISelectionWidgets> createState() => _CHISelectionWidgetsState();
// }

// class _CHISelectionWidgetsState extends State<CHISelectionWidgets> {
//   bool value = false;
//   bool tileValue = false;
//   Object? radioValue = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CHIAppBar(title: 'CHI Selection Widgets'),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CHICheckBox(
//                 value: value, onChanged: (v) => setState(() => value = v!)),
//             const SizedBox(height: 24),
//             CHICheckBoxTile(
//               value: tileValue,
//               onChanged: (v) => setState(() => tileValue = v!),
//               child: Text('Check Box', style: CHIStyles.mdNormalStyle),
//             ),
//             const SizedBox(height: 12),
//             CHIRadioButton(
//                 height: 56,
//                 value: 0,
//                 groupValue: radioValue!,
//                 onChanged: (val) => setState(() => radioValue = val),
//                 child: Text('CHI radio Tile', style: CHIStyles.mdNormalStyle)),
//             const SizedBox(height: 12),
//             CHIRadioButton(
//                 height: 56,
//                 value: 1,
//                 groupValue: radioValue!,
//                 onChanged: (val) => setState(() => radioValue = val),
//                 child: Text('CHI radio Tile', style: CHIStyles.mdNormalStyle)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ChiScaffoldExample extends StatelessWidget {
//   const ChiScaffoldExample({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CHIScaffold(
//         appBar: const CHIAppBar(title: 'CHI Scaffold'),
//         body: Center(
//           child: Text('Data Will Display in this area',
//               style: CHIStyles.xsSemiBoldStyle),
//         ));
//   }
// }

// // class CHIFilePickerView extends StatelessWidget {
// //   const CHIFilePickerView({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return CHIScaffold(
// //       body: CHIDialogs.showFilePicker(context),
// //     );
// //   }
// // }

// class CHISliderView extends StatefulWidget {
//   const CHISliderView({super.key});

//   @override
//   State<CHISliderView> createState() => _CHISliderViewState();
// }

// class _CHISliderViewState extends State<CHISliderView> {
//   double value = 0;
//   void _onChanged(double val) {
//     setState(() {
//       value = val;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CHIAppBar(title: 'CHI Slider'),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: CHISlider(value: value, onChanged: _onChanged),
//         ),
//       ),
//     );
//   }
// }

// class CHIListView extends StatelessWidget {
//   CHIListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CHIAppBar(title: 'Generic ListView'),
//       body: GenericDataTable<Patient, Patients>(
//         title: "Flutter Art",
//         search: true,
//         // slidable: true,
//         // leftActions: _leftActions,
//         // rightActions: _rightActions,
//         dataList: _patients,
//         cellDesign: _cellDesign,
//         fromJson: Patients.fromJson,
//         request: Patient.request,
//         // endPoint: '/patient-reports/get-patients-of-caregiver',
//         endPoint: '/healthcare-facility/patients',
//         apiResponseType: _patientList,
//         apiController: _apiController,
//       ),
//     );
//   }

//   final List<Patient> _patients = [];
//   final Patients _patientList = Patients();
//   final _apiController = StreamController<String>.broadcast();
//   Widget _cellDesign(int index) {
//     return PatientCellDesign(_patients[index]);
//   }

//   List<SlidableAction> _leftActions(int index) => [
//         SlidableAction(
//           padding: EdgeInsets.zero,
//           spacing: 0,
//           onPressed: (context) =>
//               Utils.showSuccessSnack(context, 'index $index slided from left'),
//           backgroundColor: const Color(0xFF21B7CA),
//           foregroundColor: Colors.white,
//           icon: Icons.share,
//           label: 'Share',
//         ),
//       ];

//   List<SlidableAction> _rightActions(int index) => [
//         SlidableAction(
//           padding: EdgeInsets.zero,
//           spacing: 0,
//           onPressed: (context) =>
//               Utils.showErrorSnack(context, 'index $index slided from right'),
//           backgroundColor: const Color(0xFFFE4A49),
//           foregroundColor: Colors.white,
//           icon: Icons.delete,
//           label: 'Delete',
//         ),
//       ];
// }

// List<Widget> _widgets = _items
//     .map((item) => ListTile(
//           title: Text(item),
//           subtitle: Text(item),
//           trailing: Text(item),
//           onTap: () => debugPrint(item),
//         ))
//     .toList();
// List<String> _items = ['Ali', 'Ahsan', 'Omair', 'Abdullah'];

// List<bool> _selectedRadioValues = <bool>[true, false];
// List<Widget> _names = <Widget>[
//   const Text('Omair'),
//   const Text('Usman')
//   // ElevatedButton(
//   //     onPressed: (() => debugPrint('bbb')), child: const Text('Usman')),
// ];

// //  widgets:fruits, onPressed:(int index) {
// //                 setState(() {
// //                   // The button that is tapped is set to true, and the others to false.
// //                   for (int i = 0; i < _selectedRadioValues.length; i++) {
// //                     _selectedRadioValues[i] = i == index;
// //                   }
// //                 });
// //               }, values:_selectedRadioValues

// Widget cardDesign(String title, VoidCallback onTap, IconData icon,
//     {bool expanded = false}) {
//   return InkWell(
//     onTap: onTap,
//     child: Card(
//       child: Padding(
//         padding:
//             const EdgeInsets.only(top: 30, left: 48, right: 48, bottom: 48),
//         child: Column(
//           children: [
//             Expanded(
//                 child: Text(
//               title,
//               overflow: TextOverflow.ellipsis,
//             )),
//             Container(
//               height: 60,
//               width: 60,
//               decoration: BoxDecoration(
//                   color: const Color.fromRGBO(224, 242, 252, 1),
//                   borderRadius: BorderRadius.circular(100)),
//               child: Icon(
//                 icon,
//                 color: const Color.fromRGBO(11, 165, 236, 1),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
