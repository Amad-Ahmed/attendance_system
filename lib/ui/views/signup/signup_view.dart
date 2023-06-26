import 'package:attendance_app/ui/common/app_strings.dart';
import 'package:attendance_app/ui_kit/buttons/chi_button.dart';
import 'package:attendance_app/ui_kit/input_fields/chi_text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'signup_view.form.dart';

import 'signup_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
  FormTextField(name: 'confirmPassword'),
])
class SignupView extends StackedView<SignupViewModel> with $SignupView {
  SignupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignupViewModel viewModel,
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
                  kSignUp,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 50),
                CHITextField(
                  hintText: kEmailHint,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                CHITextField(
                  textAlignVertical: TextAlignVertical.center,
                  hintText: kPasswordHint,
                  controller: passwordController,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        viewModel.togglePasswordVisibility();
                      },
                      child: Icon(
                        viewModel.isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey,
                      )),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: viewModel.isPasswordVisible,
                ),
                const SizedBox(height: 20),
                CHITextField(
                  textAlignVertical: TextAlignVertical.center,
                  hintText: kConfirmPasswordHint,
                  controller: confirmPasswordController,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        viewModel.togglePasswordVisibility2();
                      },
                      child: Icon(
                        viewModel.isPasswordVisible2
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey,
                      )),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: viewModel.isPasswordVisible2,
                ),

                // Confirm password field
                const SizedBox(height: 20),
                CHIButton(
                  btnLabel: kSignUp,
                  onTap: () {
                    viewModel.navigateToCompanyDetails();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void onViewModelReady(SignupViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  SignupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignupViewModel();
}
