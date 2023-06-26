import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class SigninViewModel extends FormViewModel {
  bool isPasswordVisible = false;
  final _navigationService = locator<NavigationService>();
  // function to toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  // function to get value of password visibility
  bool get passwordVisibility => isPasswordVisible;

  void navigateToSignUp() {
    // navigate to sign in page
    _navigationService.navigateTo(Routes.signupView);
  }

  void navigateToEmployeeInfo() {
    // navigate to employee info page
    _navigationService.navigateTo(Routes.employeeInfoView);
  }
}
