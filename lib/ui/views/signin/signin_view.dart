import 'package:attendance_app/ui_kit/buttons/chi_button.dart';
import 'package:attendance_app/ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import '../../../ui_kit/input_fields/chi_text_field.dart';
import '../../common/app_strings.dart';
import 'signin_view.form.dart';

import 'signin_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class SigninView extends StackedView<SigninViewModel> with $SigninView {
  const SigninView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SigninViewModel viewModel,
    Widget? child,
  ) {
    return CHIScaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              kSignIn,
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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  kForgotPassword,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            CHIButton(
                btnLabel: kSignIn,
                onTap: () {
                  viewModel.navigateToEmployeeInfo();
                }),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(kDontHaveAnAccount),
                TextButton(
                  onPressed: () {
                    viewModel.navigateToSignUp();
                  },
                  child: const Text(
                    kSignUp,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    ));
  }

  @override
  SigninViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninViewModel();
}
