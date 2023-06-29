import 'package:attendance_app/ui_kit/buttons/chi_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../ui_kit/scaffold/chi_scaffold.dart';
import 'employee_actions_viewmodel.dart';

class EmployeeActionsView extends StackedView<EmployeeActionsViewModel> {
  const EmployeeActionsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EmployeeActionsViewModel viewModel,
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
                Row(
                  children: [
                    CHIButton(
                      btnLabel: "Leave Request",
                      height: 140,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  EmployeeActionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EmployeeActionsViewModel();
}
