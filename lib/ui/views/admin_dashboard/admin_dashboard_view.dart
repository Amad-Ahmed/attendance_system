import 'package:attendance_app/ui/views/admin_employee/admin_employee_view.dart';
import 'package:attendance_app/ui/views/admin_home/admin_home_view.dart';
import 'package:attendance_app/ui/views/admin_profile/admin_profile_view.dart';
import 'package:attendance_app/ui/views/admin_projects/admin_projects_view.dart';
import 'package:attendance_app/ui/views/admin_stats/admin_stats_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'admin_dashboard_viewmodel.dart';

class AdminDashboardView extends StatelessWidget {
  const AdminDashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AdminDashboardViewModel>.reactive(
      viewModelBuilder: () => AdminDashboardViewModel(),
      // Initialize the ViewModel
      builder: (context, viewModel, child) => Scaffold(
        body: SafeArea(
          child: getViewForIndex(viewModel.currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: "Projects",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Employees",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: "Stats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          currentIndex: viewModel.currentIndex,
          onTap: viewModel.setIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }

  getViewForIndex(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return AdminHomeView();
      case 1:
        return const AdminProjectsView();
      case 2:
        return const AdminEmployeeView();
      case 3:
        return const AdminStatsView();
      default:
        return const AdminProfileView();
    }
  }
}

// onModelReady: (viewModel) => viewModel.init(),

// CHIBottomNavigationBar(
//         currentIndex: viewModel.currentIndex,
//         icons: const [
//           "assets/icons/home.svg",
//           "assets/icons/work.svg",
//           "assets/icons/employee.svg",
//           "assets/icons/stats.svg",
//           "assets/icons/person.svg",
//         ],
//         widgets: const [
//           AdminHomeView(),
//           AdminProjectsView(),
//           AdminEmployeeView(),
//           AdminStatsView(),
//           AdminProfileView(),
//         ],
//         labels: const [
//           "Home",
//           "Projects",
//           "Employees",
//           "Stats",
//           "Profile",
//         ],
//       ),
