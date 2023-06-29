import 'package:flutter/material.dart';

class Employee {
  final String name;
  final String position;

  Employee({required this.name, required this.position});
}

class EmployeeCard extends StatelessWidget {
  final String name;
  final String position;

  const EmployeeCard({
    Key? key,
    required this.name,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text(position),
      ),
    );
  }
}

List<Employee> employees = [
  Employee(
    name: "Amad",
    position: "Manager",
  ),
  Employee(
    name: "John",
    position: "Employee",
  ),
  Employee(
    name: "Jane",
    position: "Employee",
  ),
  Employee(
    name: "Doe",
    position: "Employee",
  ),
  Employee(
    name: "Doe",
    position: "Employee",
  ),
  Employee(
    name: "Doe",
    position: "Employee",
  ),
  Employee(
    name: "Doe",
    position: "Employee",
  ),
];
