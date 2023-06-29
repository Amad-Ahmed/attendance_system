import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../ui_kit/scaffold/chi_scaffold.dart';
import 'employee_history_viewmodel.dart';

class EmployeeHistoryView extends StackedView<EmployeeHistoryViewModel> {
  const EmployeeHistoryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EmployeeHistoryViewModel viewModel,
    Widget? child,
  ) {
    viewModel.initializeLogEntries();
    return CHIScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "History",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {}, child: Icon(Icons.calendar_today_outlined))
                ],
              ),
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: viewModel.logEntries
                      .map((logEntry) => ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(logEntry.time),
                                Text(logEntry.checkInStatus),
                                Text(logEntry.task),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  EmployeeHistoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EmployeeHistoryViewModel();
}
