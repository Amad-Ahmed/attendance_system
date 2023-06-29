// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:attendance_app/ui/views/admin_dashboard/admin_dashboard_view.dart'
    as _i11;
import 'package:attendance_app/ui/views/admin_employee/admin_employee_view.dart'
    as _i14;
import 'package:attendance_app/ui/views/admin_home/admin_home_view.dart'
    as _i12;
import 'package:attendance_app/ui/views/admin_profile/admin_profile_view.dart'
    as _i16;
import 'package:attendance_app/ui/views/admin_projects/admin_projects_view.dart'
    as _i13;
import 'package:attendance_app/ui/views/admin_stats/admin_stats_view.dart'
    as _i15;
import 'package:attendance_app/ui/views/companydetails/companydetails_view.dart'
    as _i7;
import 'package:attendance_app/ui/views/employee_actions/employee_actions_view.dart'
    as _i20;
import 'package:attendance_app/ui/views/employee_dashboard/employee_dashboard_view.dart'
    as _i17;
import 'package:attendance_app/ui/views/employee_history/employee_history_view.dart'
    as _i19;
import 'package:attendance_app/ui/views/employee_home/employee_home_view.dart'
    as _i18;
import 'package:attendance_app/ui/views/employee_info/employee_info_view.dart'
    as _i9;
import 'package:attendance_app/ui/views/employee_profile/employee_profile_view.dart'
    as _i21;
import 'package:attendance_app/ui/views/forgotpass/forgotpass_view.dart' as _i6;
import 'package:attendance_app/ui/views/invitation/invitation_view.dart'
    as _i10;
import 'package:attendance_app/ui/views/inviteemployees/inviteemployees_view.dart'
    as _i8;
import 'package:attendance_app/ui/views/signin/signin_view.dart' as _i4;
import 'package:attendance_app/ui/views/signup/signup_view.dart' as _i5;
import 'package:attendance_app/ui/views/startup/startup_view.dart' as _i2;
import 'package:attendance_app/ui/views/welcome/welcome_view.dart' as _i3;
import 'package:flutter/material.dart' as _i22;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i23;

class Routes {
  static const startupView = '/startup-view';

  static const welcomeView = '/welcome-view';

  static const signinView = '/signin-view';

  static const signupView = '/signup-view';

  static const forgotpassView = '/forgotpass-view';

  static const companydetailsView = '/companydetails-view';

  static const inviteemployeesView = '/inviteemployees-view';

  static const employeeInfoView = '/employee-info-view';

  static const invitationView = '/invitation-view';

  static const adminDashboardView = '/admin-dashboard-view';

  static const adminHomeView = '/admin-home-view';

  static const adminProjectsView = '/admin-projects-view';

  static const adminEmployeeView = '/admin-employee-view';

  static const adminStatsView = '/admin-stats-view';

  static const adminProfileView = '/admin-profile-view';

  static const employeeDashboardView = '/employee-dashboard-view';

  static const employeeHomeView = '/employee-home-view';

  static const employeeHistoryView = '/employee-history-view';

  static const employeeActionsView = '/employee-actions-view';

  static const employeeProfileView = '/employee-profile-view';

  static const all = <String>{
    startupView,
    welcomeView,
    signinView,
    signupView,
    forgotpassView,
    companydetailsView,
    inviteemployeesView,
    employeeInfoView,
    invitationView,
    adminDashboardView,
    adminHomeView,
    adminProjectsView,
    adminEmployeeView,
    adminStatsView,
    adminProfileView,
    employeeDashboardView,
    employeeHomeView,
    employeeHistoryView,
    employeeActionsView,
    employeeProfileView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.welcomeView,
      page: _i3.WelcomeView,
    ),
    _i1.RouteDef(
      Routes.signinView,
      page: _i4.SigninView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i5.SignupView,
    ),
    _i1.RouteDef(
      Routes.forgotpassView,
      page: _i6.ForgotpassView,
    ),
    _i1.RouteDef(
      Routes.companydetailsView,
      page: _i7.CompanydetailsView,
    ),
    _i1.RouteDef(
      Routes.inviteemployeesView,
      page: _i8.InviteemployeesView,
    ),
    _i1.RouteDef(
      Routes.employeeInfoView,
      page: _i9.EmployeeInfoView,
    ),
    _i1.RouteDef(
      Routes.invitationView,
      page: _i10.InvitationView,
    ),
    _i1.RouteDef(
      Routes.adminDashboardView,
      page: _i11.AdminDashboardView,
    ),
    _i1.RouteDef(
      Routes.adminHomeView,
      page: _i12.AdminHomeView,
    ),
    _i1.RouteDef(
      Routes.adminProjectsView,
      page: _i13.AdminProjectsView,
    ),
    _i1.RouteDef(
      Routes.adminEmployeeView,
      page: _i14.AdminEmployeeView,
    ),
    _i1.RouteDef(
      Routes.adminStatsView,
      page: _i15.AdminStatsView,
    ),
    _i1.RouteDef(
      Routes.adminProfileView,
      page: _i16.AdminProfileView,
    ),
    _i1.RouteDef(
      Routes.employeeDashboardView,
      page: _i17.EmployeeDashboardView,
    ),
    _i1.RouteDef(
      Routes.employeeHomeView,
      page: _i18.EmployeeHomeView,
    ),
    _i1.RouteDef(
      Routes.employeeHistoryView,
      page: _i19.EmployeeHistoryView,
    ),
    _i1.RouteDef(
      Routes.employeeActionsView,
      page: _i20.EmployeeActionsView,
    ),
    _i1.RouteDef(
      Routes.employeeProfileView,
      page: _i21.EmployeeProfileView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.WelcomeView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.WelcomeView(),
        settings: data,
      );
    },
    _i4.SigninView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.SigninView(),
        settings: data,
      );
    },
    _i5.SignupView: (data) {
      final args = data.getArgs<SignupViewArguments>(
        orElse: () => const SignupViewArguments(),
      );
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.SignupView(key: args.key),
        settings: data,
      );
    },
    _i6.ForgotpassView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.ForgotpassView(),
        settings: data,
      );
    },
    _i7.CompanydetailsView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.CompanydetailsView(),
        settings: data,
      );
    },
    _i8.InviteemployeesView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.InviteemployeesView(),
        settings: data,
      );
    },
    _i9.EmployeeInfoView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.EmployeeInfoView(),
        settings: data,
      );
    },
    _i10.InvitationView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.InvitationView(),
        settings: data,
      );
    },
    _i11.AdminDashboardView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.AdminDashboardView(),
        settings: data,
      );
    },
    _i12.AdminHomeView: (data) {
      final args = data.getArgs<AdminHomeViewArguments>(
        orElse: () => const AdminHomeViewArguments(),
      );
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.AdminHomeView(key: args.key),
        settings: data,
      );
    },
    _i13.AdminProjectsView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.AdminProjectsView(),
        settings: data,
      );
    },
    _i14.AdminEmployeeView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.AdminEmployeeView(),
        settings: data,
      );
    },
    _i15.AdminStatsView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.AdminStatsView(),
        settings: data,
      );
    },
    _i16.AdminProfileView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.AdminProfileView(),
        settings: data,
      );
    },
    _i17.EmployeeDashboardView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.EmployeeDashboardView(),
        settings: data,
      );
    },
    _i18.EmployeeHomeView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.EmployeeHomeView(),
        settings: data,
      );
    },
    _i19.EmployeeHistoryView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.EmployeeHistoryView(),
        settings: data,
      );
    },
    _i20.EmployeeActionsView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.EmployeeActionsView(),
        settings: data,
      );
    },
    _i21.EmployeeProfileView: (data) {
      return _i22.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.EmployeeProfileView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class SignupViewArguments {
  const SignupViewArguments({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SignupViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class AdminHomeViewArguments {
  const AdminHomeViewArguments({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant AdminHomeViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

extension NavigatorStateExtension on _i23.NavigationService {
  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSigninView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signinView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignupView({
    _i22.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.signupView,
        arguments: SignupViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgotpassView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgotpassView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCompanydetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.companydetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInviteemployeesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.inviteemployeesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEmployeeInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.employeeInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInvitationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.invitationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminDashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminHomeView({
    _i22.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.adminHomeView,
        arguments: AdminHomeViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminProjectsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminProjectsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminEmployeeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminEmployeeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminStatsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminStatsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEmployeeDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.employeeDashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEmployeeHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.employeeHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEmployeeHistoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.employeeHistoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEmployeeActionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.employeeActionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEmployeeProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.employeeProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSigninView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signinView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignupView({
    _i22.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.signupView,
        arguments: SignupViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgotpassView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgotpassView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCompanydetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.companydetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInviteemployeesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.inviteemployeesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEmployeeInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.employeeInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInvitationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.invitationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminDashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminHomeView({
    _i22.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.adminHomeView,
        arguments: AdminHomeViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminProjectsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminProjectsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminEmployeeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminEmployeeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminStatsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminStatsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEmployeeDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.employeeDashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEmployeeHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.employeeHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEmployeeHistoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.employeeHistoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEmployeeActionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.employeeActionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEmployeeProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.employeeProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
