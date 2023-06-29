import 'package:attendance_app/ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:searchfield/searchfield.dart';
import 'dart:math'; // Import the dart:math library for generating random names
import 'employee.dart';
import 'admin_employee_viewmodel.dart';

class AdminEmployeeView extends StackedView<AdminEmployeeViewModel> {
  const AdminEmployeeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminEmployeeViewModel viewModel,
    Widget? child,
  ) {
    // Generate a list of random employee names
    List<SearchFieldListItem<String>> employeeNames =
        generateRandomEmployeeNames();

    return CHIScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Employees",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                SearchField(
                  suggestions:
                      employeeNames, // Pass the list of SearchFieldListItem objects as suggestions
                  hint: 'Search Employee',
                  suggestionsDecoration:
                      SuggestionDecoration(padding: const EdgeInsets.all(10)),
                  searchStyle:
                      const TextStyle(fontSize: 15, color: Colors.black),
                  searchInputDecoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    hintText: 'Search Employee',
                    hintStyle: TextStyle(fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: employees.length,
                  itemBuilder: (context, index) {
                    Employee employee = employees[index];
                    return EmployeeCard(
                      name: employee.name,
                      position: employee.position,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  AdminEmployeeViewModel viewModelBuilder(BuildContext context) =>
      AdminEmployeeViewModel();

  List<SearchFieldListItem<String>> generateRandomEmployeeNames() {
    List<SearchFieldListItem<String>> employeeNames = [];
    Random random = Random();

    for (int i = 0; i < 10; i++) {
      // Generate random names
      String firstName = 'Employee';
      String lastName = (random.nextInt(100) + 1).toString();

      String fullName = '$firstName $lastName';

      SearchFieldListItem<String> item = SearchFieldListItem<String>(fullName);
      employeeNames.add(item);
    }

    return employeeNames;
  }
}
