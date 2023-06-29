import 'package:attendance_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:attendance_app/ui/dialogs/info_alert/info_alert_dialog.dart';
// import 'package:attendance_app/ui/views/home/home_view.dart';
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
import 'package:attendance_app/ui/views/admin_dashboard/admin_dashboard_view.dart';
import 'package:attendance_app/ui/views/admin_home/admin_home_view.dart';
import 'package:attendance_app/ui/views/admin_projects/admin_projects_view.dart';
import 'package:attendance_app/ui/views/admin_employee/admin_employee_view.dart';
import 'package:attendance_app/ui/views/admin_stats/admin_stats_view.dart';
import 'package:attendance_app/ui/views/admin_profile/admin_profile_view.dart';
import 'package:attendance_app/ui/views/employee_dashboard/employee_dashboard_view.dart';
import 'package:attendance_app/ui/views/employee_home/employee_home_view.dart';
import 'package:attendance_app/ui/views/employee_history/employee_history_view.dart';
import 'package:attendance_app/ui/views/employee_actions/employee_actions_view.dart';
import 'package:attendance_app/ui/views/employee_profile/employee_profile_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: WelcomeView),
    MaterialRoute(page: SigninView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: ForgotpassView),
    MaterialRoute(page: CompanydetailsView),
    MaterialRoute(page: InviteemployeesView),
    MaterialRoute(page: EmployeeInfoView),
    MaterialRoute(page: InvitationView),
    MaterialRoute(page: AdminDashboardView),
    MaterialRoute(page: AdminHomeView),
    MaterialRoute(page: AdminProjectsView),
    MaterialRoute(page: AdminEmployeeView),
    MaterialRoute(page: AdminStatsView),
    MaterialRoute(page: AdminProfileView),
    MaterialRoute(page: EmployeeDashboardView),
    MaterialRoute(page: EmployeeHomeView),
    MaterialRoute(page: EmployeeHistoryView),
    MaterialRoute(page: EmployeeActionsView),
    MaterialRoute(page: EmployeeProfileView),
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
