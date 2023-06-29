import 'package:attendance_app/ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'project_card.dart';
import 'admin_projects_viewmodel.dart';

class AdminProjectsView extends StackedView<AdminProjectsViewModel> {
  const AdminProjectsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminProjectsViewModel viewModel,
    Widget? child,
  ) {
    return CHIScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Projects',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                  size: 40,
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ProjectCard(
                    project: Project(
                      projectName: "Attendance App",
                      manager: "Amad",
                      startDate: "6/28/2023",
                      progress: 0.4,
                    ),
                  ),
                  ProjectCard(
                    project: Project(
                      projectName: "FlatBuddy App",
                      manager: "Abdullah",
                      startDate: "6/28/2023",
                      progress: 0.6,
                    ),
                  ),
                  ProjectCard(
                    project: Project(
                      projectName: "Vision App",
                      manager: "Umair",
                      startDate: "6/28/2023",
                      progress: 0.5,
                    ),
                  ),
                  ProjectCard(
                    project: Project(
                      projectName: "Attendance App",
                      manager: "Amad",
                      startDate: "6/28/2023",
                      progress: 0.9,
                    ),
                  ),
                  ProjectCard(
                    project: Project(
                      projectName: "Attendance App",
                      manager: "Amad",
                      startDate: "6/28/2023",
                      progress: 0.9,
                    ),
                  ),
                  ProjectCard(
                    project: Project(
                      projectName: "Attendance App",
                      manager: "Amad",
                      startDate: "6/28/2023",
                      progress: 0.9,
                    ),
                  ),
                  ProjectCard(
                    project: Project(
                      projectName: "Attendance App",
                      manager: "Amad",
                      startDate: "6/28/2023",
                      progress: 0.9,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  AdminProjectsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AdminProjectsViewModel();
}
