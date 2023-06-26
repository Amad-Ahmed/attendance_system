import 'package:attendance_app/ui/common/app_strings.dart';
import 'package:attendance_app/ui_kit/buttons/chi_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'welcome_viewmodel.dart';

class WelcomeView extends StackedView<WelcomeViewModel> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WelcomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .center, // Align children in the center horizontally
              children: [
                const SizedBox(height: 50),
                const Text(
                  textAlign: TextAlign.center,
                  kWelcome,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 80),
                CHIButton(
                    btnLabel: kSignUp,
                    onTap: () {
                      viewModel.navigateToSignUp();
                    }),
                const SizedBox(height: 25),
                CHIButton(
                    btnLabel: kLogIn,
                    onTap: () {
                      viewModel.navigateToSignIn();
                    }),
                const SizedBox(height: 25),
                CHIButton(
                    btnLabel: kForgotPassword,
                    onTap: () {
                      viewModel.navigateToForgotPassword();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  WelcomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WelcomeViewModel();
}
