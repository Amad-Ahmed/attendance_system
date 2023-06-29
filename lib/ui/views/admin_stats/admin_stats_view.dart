import 'package:attendance_app/ui_kit/input_fields/chi_text_field.dart';
import 'package:attendance_app/ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'admin_stats_viewmodel.dart';

class AdminStatsView extends StackedView<AdminStatsViewModel> {
  const AdminStatsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminStatsViewModel viewModel,
    Widget? child,
  ) {
    return const CHIScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Stats",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Graphs to be added here as per the requirement",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  AdminStatsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AdminStatsViewModel();
}
