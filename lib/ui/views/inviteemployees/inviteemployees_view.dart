import 'package:attendance_app/ui_kit/buttons/chi_button.dart';
import 'package:attendance_app/ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'inviteemployees_viewmodel.dart';

class InviteemployeesView extends StackedView<InviteemployeesViewModel> {
  const InviteemployeesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InviteemployeesViewModel viewModel,
    Widget? child,
  ) {
    return CHIScaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
          child: Center(
              child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Invite Employees",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          CHIButton(
            btnLabel: "Invite Employees",
            onTap: () {},
          ),
          const SizedBox(
            height: 100,
          ),
          CHIButton(
            btnLabel: "Dashboard",
            onTap: () {},
          )
        ],
      ))),
    ));
  }

  @override
  InviteemployeesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InviteemployeesViewModel();
}
