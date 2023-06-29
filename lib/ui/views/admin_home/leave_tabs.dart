import 'package:flutter/material.dart';

class LeaveTabs extends StatefulWidget {
  const LeaveTabs({
    Key? key,
  }) : super(key: key);

  @override
  _LeaveTabsState createState() => _LeaveTabsState();
}

class _LeaveTabsState extends State<LeaveTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.black,
          controller: _tabController,
          tabs: [
            Tab(text: 'Leave Requests'),
            Tab(text: 'Approved Requests'),
          ],
        ),
        SizedBox(
          height: 350, // Adjust the height as needed
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView(
                children: [
                  _buildLeaveCard(
                    heading: 'Sick Leave',
                    employeeName: 'John Doe',
                    requestedTo: 'Jane Smith',
                    startDate: '2023-06-28',
                    endDate: '2023-06-30',
                  ),
                  _buildLeaveCard(
                    heading: 'Sick Leave',
                    employeeName: 'Alice Johnson',
                    requestedTo: 'Bob Williams',
                    startDate: '2023-07-01',
                    endDate: '2023-07-05',
                  ),
                  _buildLeaveCard(
                    heading: 'Sick Leave',
                    employeeName: 'John Doe',
                    requestedTo: 'Jane Smith',
                    startDate: '2023-06-28',
                    endDate: '2023-06-30',
                  ),
                  _buildLeaveCard(
                    heading: 'Sick Leave',
                    employeeName: 'Alice Johnson',
                    requestedTo: 'Bob Williams',
                    startDate: '2023-07-01',
                    endDate: '2023-07-05',
                  ),
                  _buildLeaveCard(
                    heading: 'Sick Leave',
                    employeeName: 'John Doe',
                    requestedTo: 'Jane Smith',
                    startDate: '2023-06-28',
                    endDate: '2023-06-30',
                  ),
                  _buildLeaveCard(
                    heading: 'Sick Leave',
                    employeeName: 'Alice Johnson',
                    requestedTo: 'Bob Williams',
                    startDate: '2023-07-01',
                    endDate: '2023-07-05',
                  ),
                ],
              ),
              ListView(
                children: [
                  _buildLeaveCard(
                    heading: 'Vacation Leave',
                    employeeName: 'Michael Brown',
                    requestedTo: 'Emily Davis',
                    startDate: '2023-07-10',
                    endDate: '2023-07-15',
                  ),
                  _buildLeaveCard(
                    heading: 'Vacation Leave',
                    employeeName: 'Sarah Thompson',
                    requestedTo: 'David Wilson',
                    startDate: '2023-07-20',
                    endDate: '2023-07-25',
                  ),
                  _buildLeaveCard(
                    heading: 'Vacation Leave',
                    employeeName: 'Michael Brown',
                    requestedTo: 'Emily Davis',
                    startDate: '2023-07-10',
                    endDate: '2023-07-15',
                  ),
                  _buildLeaveCard(
                    heading: 'Vacation Leave',
                    employeeName: 'Sarah Thompson',
                    requestedTo: 'David Wilson',
                    startDate: '2023-07-20',
                    endDate: '2023-07-25',
                  ),
                  _buildLeaveCard(
                    heading: 'Vacation Leave',
                    employeeName: 'Michael Brown',
                    requestedTo: 'Emily Davis',
                    startDate: '2023-07-10',
                    endDate: '2023-07-15',
                  ),
                  _buildLeaveCard(
                    heading: 'Vacation Leave',
                    employeeName: 'Sarah Thompson',
                    requestedTo: 'David Wilson',
                    startDate: '2023-07-20',
                    endDate: '2023-07-25',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLeaveCard({
    required String heading,
    required String employeeName,
    required String requestedTo,
    required String startDate,
    required String endDate,
  }) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          heading,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Employee: $employeeName'),
            Text('Requested To: $requestedTo'),
            Text('Start Date: $startDate'),
            Text('End Date: $endDate'),
          ],
        ),
      ),
    );
  }
}
