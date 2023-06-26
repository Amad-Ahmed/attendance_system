import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class WelcomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // function to navigate to relevant page on button click
  void navigateToSignIn() {
    // navigate to sign in page
    _navigationService.navigateTo(Routes.signinView);
  }

  void navigateToSignUp() {
    _navigationService.navigateTo(Routes.signupView);
  }

  void navigateToForgotPassword() {
    // navigate to forgot password page
    _navigationService.navigateTo(Routes.forgotpassView);
  }
}
