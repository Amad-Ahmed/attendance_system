import 'package:attendance_app/ui_kit/buttons/chi_button.dart';
import 'package:attendance_app/ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../../ui_kit/input_fields/chi_text_field.dart';
import '../../common/app_strings.dart';
import 'employee_info_viewmodel.dart';
import 'employee_info_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'name'),
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
  FormDateField(name: 'dateOfBirth'),
])
class EmployeeInfoView extends StackedView<EmployeeInfoViewModel>
    with $EmployeeInfoView {
  const EmployeeInfoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EmployeeInfoViewModel viewModel,
    Widget? child,
  ) {
    return CHIScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              const SizedBox(height: 50),
              const Text(
                'Employee Info',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 50),
              CHITextField(
                hintText: 'Name',
                controller: nameController,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),
              CHITextField(
                hintText: 'Email',
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              CHIButton(
                  btnLabel: 'Submit',
                  onTap: () {
                    viewModel.saveData();
                  }),
            ]),
          ),
        ),
      ),
    );
  }

  @override
  EmployeeInfoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EmployeeInfoViewModel();
}
