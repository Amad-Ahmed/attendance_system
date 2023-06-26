import 'package:stacked/stacked.dart';

class EmployeeInfoViewModel extends FormViewModel {
  bool isPasswordVisible = false;

  // function to toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  // function to get value of password visibility
  bool get passwordVisibility => isPasswordVisible;

  void saveData() {}
}
