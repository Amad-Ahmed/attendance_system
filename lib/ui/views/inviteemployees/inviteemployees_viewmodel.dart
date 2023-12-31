import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class InviteemployeesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  //function to go to admin dashboard
  void goToAdminDashboard() {
    _navigationService.navigateTo(Routes.adminDashboardView);
    // _navigationService.navigateTo(Routes.hom);
  }
}
