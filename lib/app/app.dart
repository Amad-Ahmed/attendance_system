import 'package:attendance_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:attendance_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:attendance_app/ui/views/home/home_view.dart';
import 'package:attendance_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:attendance_app/ui/views/welcome/welcome_view.dart';
import 'package:attendance_app/ui/views/signin/signin_view.dart';
import 'package:attendance_app/ui/views/signup/signup_view.dart';
import 'package:attendance_app/ui/views/forgotpass/forgotpass_view.dart';
import 'package:attendance_app/ui/views/companydetails/companydetails_view.dart';
import 'package:attendance_app/ui/views/inviteemployees/inviteemployees_view.dart';
import 'package:attendance_app/ui/views/employee_info/employee_info_view.dart';
import 'package:attendance_app/ui/views/invitation/invitation_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    // MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: WelcomeView),
    MaterialRoute(page: SigninView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: ForgotpassView),
    MaterialRoute(page: CompanydetailsView),
    MaterialRoute(page: InviteemployeesView),
    MaterialRoute(page: EmployeeInfoView),
    MaterialRoute(page: InvitationView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
