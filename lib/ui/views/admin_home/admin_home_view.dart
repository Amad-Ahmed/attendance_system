import 'package:attendance_app/ui_kit/buttons/chi_button.dart';
import 'package:attendance_app/ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
// import 'package:pie_chart/pie_chart.dart';
import 'leave_tabs.dart';
import 'summary_pie.dart';
import 'admin_home_viewmodel.dart';

class AdminHomeView extends StackedView<AdminHomeViewModel> {
  AdminHomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminHomeViewModel viewModel,
    Widget? child,
  ) {
    return CHIScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "Welcome Back, John",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daily Summary",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SummaryPie(),
                const SizedBox(
                  height: 30,
                ),
                LeaveTabs(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  AdminHomeViewModel viewModelBuilder(BuildContext context) =>
      AdminHomeViewModel();
}

// Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CHIButton(
//                       width: 150,
//                       onTap: () {
//                         _showFirstList = true;
//                         _showSecondList = false;
//                       },
//                       btnLabel: 'Button 1',
//                     ),
//                     const SizedBox(width: 10),
//                     CHIButton(
//                       width: 150,
//                       onTap: () {
//                         _showFirstList = false;
//                         _showSecondList = true;
//                       },
//                       btnLabel: 'Button 2',
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//                 Visibility(
//                   visible: _showFirstList,
//                   child: const Column(
//                     children: [
//                       Text(
//                         'List for Button 1',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10),
//                       // Replace with your list widget for Button 1
//                       Text('List 1 Item 1'),
//                       Text('List 1 Item 2'),
//                       Text('List 1 Item 3'),
//                     ],
//                   ),
//                 ),
//                 Visibility(
//                   visible: _showSecondList,
//                   child: const Column(
//                     children: [
//                       Text(
//                         'List for Button 2',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10),
//                       // Replace with your list widget for Button 2
//                       Text('List 2 Item 1'),
//                       Text('List 2 Item 2'),
//                       Text('List 2 Item 3'),
//                     ],
//                   ),
//                 ),
