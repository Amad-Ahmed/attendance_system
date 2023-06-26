import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class SignupViewModel extends FormViewModel {
  bool isPasswordVisible = false;
  bool isPasswordVisible2 = false;
  final _navigationService = locator<NavigationService>();
  //function to navigate to relevant page on button click after filling the form
  void navigateToCompanyDetails() {
    // navigate to sign in page
    _navigationService.navigateTo(Routes.companydetailsView);
  }

  // function to toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  // function to get value of password visibility
  bool get passwordVisibility => isPasswordVisible;

  void togglePasswordVisibility2() {
    isPasswordVisible2 = !isPasswordVisible2;
    notifyListeners();
  }

  // function to get value of password visibility
  bool get passwordVisibility2 => isPasswordVisible2;
}
