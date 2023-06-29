import 'package:flutter/material.dart';

class Project {
  final String projectName;
  final String manager;
  final String startDate;
  final double progress;

  Project({
    required this.projectName,
    required this.manager,
    required this.startDate,
    required this.progress,
  });
}

class ProjectList extends StatelessWidget {
  final List<Project> projects = [
    Project(
      projectName: 'Project A',
      manager: 'John Doe',
      startDate: '2023-06-28',
      progress: 0.75,
    ),
    Project(
      projectName: 'Project B',
      manager: 'Alice Johnson',
      startDate: '2023-07-01',
      progress: 0.4,
    ),
    Project(
      projectName: 'Project C',
      manager: 'Bob Williams',
      startDate: '2023-06-28',
      progress: 0.9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return ProjectCard(
            project: project,
          );
        },
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.projectName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text('Manager: ${project.manager}'),
            Text('Start Date: ${project.startDate}'),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: project.progress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 8),
            Text('Progress: ${(project.progress * 100).toStringAsFixed(0)}%'),
          ],
        ),
      ),
    );
  }
}
