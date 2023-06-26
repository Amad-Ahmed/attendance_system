// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import '../../constants/chi_styles.dart';
// import '../card/chi_card.dart';
// import '../dialogs/chi_dialogs.dart';
// import '../selection_buttons/chi_check_box.dart';

// class MultiSelectBottomSheet extends StatelessWidget {
//   final List<Filter> items;
//   final Function(List<String>) onSelect;
//   final String title;

//   /// Multi Selection Bottomsheet `MultiSelectBottomSheet`.
//   MultiSelectBottomSheet(
//       {super.key,
//       required this.items,
//       required this.onSelect,
//       required this.title});

//   List<String> selectedItems = [];

//   @override
//   Widget build(BuildContext context) {
//     return CHICard(
//       height: 56,
//       child: Row(
//         children: [
//           Text(
//             title,
//             style: CHIStyles.mdNormalStyle
//                 .copyWith(color: CHIStyles.primaryTextColorLight),
//           ),
//           const Spacer(),
//           SvgPicture.asset('assets/icons/arrow_down.svg', fit: BoxFit.scaleDown)
//         ],
//       ),
//       onTap: () => showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return StatefulBuilder(builder: (context, setState) {
//             return Column(
//               children: [
//                 _sheetHeader(title),
//                 Expanded(
//                     child: ListView.builder(
//                   padding: const EdgeInsets.symmetric(horizontal: 12),
//                   itemCount: items.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 4),
//                       child: CHICheckBoxTile(
//                         value: items[index].isSelected,
//                         child: Text(
//                           items[index].label!,
//                           style: CHIStyles.mdNormalStyle,
//                         ),
//                         onChanged: (value) {
//                           setState(() {
//                             items[index].isSelected = value!;
//                           });
//                           selectedItems.clear();
//                           for (var j in items) {
//                             if (j.isSelected) {
//                               selectedItems.add(j.label!);
//                             }
//                           }
//                           onSelect(selectedItems);
//                         },
//                       ),
//                     );
//                   },
//                 )),
//               ],
//             );
//           });
//         },
//       ),
//     );
//   }

//   Widget _sheetHeader(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 15),
//       child: Center(child: Text(title, style: CHIStyles.mdNormalStyle)),
//     );
//   }
// }

// class SheetView extends StatefulWidget {
//   const SheetView({super.key});

//   @override
//   State<SheetView> createState() => _SheetViewState();
// }

// class _SheetViewState extends State<SheetView> {
//   List<Filter> items = List.generate(
//       6, (index) => Filter(label: "Item $index", isSelected: false));
//   List<String> selectedItems = [];
//   void onSelect(List<String> selections) {
//     selectedItems = selections;
//     print(selectedItems);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         children: [
//           MultiSelectBottomSheet(
//               items: items, onSelect: onSelect, title: 'Select'),
//         ],
//       )),
//     );
//   }
// }

// class MyData extends Filter {
//   String? name;
//   MyData({this.name, super.label, super.isSelected});
// }
