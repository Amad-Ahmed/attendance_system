import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../employee_actions/employee_actions_view.dart';
import '../employee_history/employee_history_view.dart';
import '../employee_home/employee_home_view.dart';
import '../employee_profile/employee_profile_view.dart';

class EmployeeDashboardViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();

  int currentIndex = 0;

  getViewForIndex(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const EmployeeHistoryView();
      case 1:
        return const EmployeeHomeView();
      case 2:
        return const EmployeeActionsView();
      case 3:
        return const EmployeeProfileView();
      default:
        return const EmployeeProfileView();
    }
  }

  void setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
