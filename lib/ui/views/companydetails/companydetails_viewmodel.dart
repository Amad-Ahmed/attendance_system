import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class CompanydetailsViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  var companyTypeValue = "Private Limited";
  var companyTypeIndex = 0;
  List<String> companyTypeList = [
    "Private Limited",
    "Public Limited",
    "Partnership",
    "Proprietorship",
    "LLP",
    "Others"
  ];
  //function to handle company type dropdown
  void onCompanyTypeChanged(int value) {
    companyTypeIndex = value;
    companyTypeValue = companyTypeList[value];
    notifyListeners();
  }

  //function to return company type list
  List<String> get companyType => companyTypeList;

  //function to go to next screen
  void next() {
    _navigationService.navigateTo(Routes.inviteemployeesView);
  }
}
