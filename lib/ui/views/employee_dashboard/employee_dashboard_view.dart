import 'package:attendance_app/ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'employee_dashboard_viewmodel.dart';

class EmployeeDashboardView extends StatelessWidget {
  const EmployeeDashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmployeeDashboardViewModel>.reactive(
      viewModelBuilder: () => EmployeeDashboardViewModel(),
      builder: (context, viewModel, child) => CHIScaffold(
        body: SafeArea(
          child: viewModel.getViewForIndex(viewModel.currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_to_action),
              label: "Actions",
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

  // @override
  // EmployeeDashboardViewModel viewModelBuilder(
  //   BuildContext context,
  // ) =>
  //     EmployeeDashboardViewModel();
}
