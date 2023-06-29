import 'package:stacked/stacked.dart';

import 'log_entry.dart';

class EmployeeHomeViewModel extends BaseViewModel {
  var check_state = "Check In";

  List<LogEntry> logEntries = [];

  void initializeLogEntries() {
    logEntries = [
      LogEntry(
        time: "9:00 AM",
        checkInStatus: "Check-in",
        task: "Task A",
      ),
      LogEntry(
        time: "1:30 PM",
        checkInStatus: "Check-out",
        task: "Task B",
      ),
      LogEntry(
        time: "3:45 PM",
        checkInStatus: "Check-in",
        task: "Task C",
      ),
      // Add more log entries as needed
    ];
  }

  void populateLogEntries() {
    // Clear existing log entries (if any)
    logEntries.clear();

    // Add some sample log entries
    logEntries.add(
        LogEntry(time: '9:00 AM', checkInStatus: 'Checked In', task: 'Task 1'));
    logEntries.add(LogEntry(
        time: '1:30 PM', checkInStatus: 'Checked Out', task: 'Task 2'));
    logEntries.add(
        LogEntry(time: '4:45 PM', checkInStatus: 'Checked In', task: 'Task 3'));
  }

  void check() {
    if (check_state == "Check In") {
      check_state = "Check Out";
    } else {
      check_state = "Check In";
    }
    notifyListeners();
  }
}
