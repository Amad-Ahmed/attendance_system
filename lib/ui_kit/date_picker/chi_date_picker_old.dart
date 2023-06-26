import 'package:intl/intl.dart';

import '/ui_kit/card/chi_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../constants/chi_styles.dart';
import '../../themes/app_theme/chi_theme.dart';

class CHIDatePicker extends StatefulWidget {
  final DateTime? lastDate;
  final String title;
  final DateTime? firstDate;
  final Function(int? data) onGetDate;
  final String? dateFormate;
  final String? icon;
  DateTime? selectedDate;
  CHIDatePicker({
    super.key,
    this.lastDate,
    required this.title,
    this.icon,
    this.dateFormate,
    required this.onGetDate,
    this.firstDate,
    this.selectedDate,
  });

  @override
  State<CHIDatePicker> createState() => _CHIDatePickerState();
}

class _CHIDatePickerState extends State<CHIDatePicker> {
  String? pickedDate;
  Future<DateTime> datePicker(BuildContext context,
      {DateTime? lastDate,
      required bool isDark,
      required DateTime selectedDate,
      DateTime? firstDate}) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: firstDate ?? DateTime(1900),
      lastDate: lastDate ?? DateTime.now(),
      builder: (context, child) => Theme(
          data: Theme.of(context).copyWith(
            colorScheme: isDark
                ? ColorScheme.dark(
                    primary: CHIStyles.primaryColor,
                    onPrimary: CHIStyles.whiteColor,
                    onSurface: Colors.white,
                  )
                : ColorScheme.light(
                    primary: CHIStyles.primaryColor,
                    onPrimary: CHIStyles.whiteColor,
                    onSurface: CHIStyles.primaryTextColor,
                  ),
            textButtonTheme: TextButtonThemeData(
              style:
                  TextButton.styleFrom(foregroundColor: CHIStyles.primaryColor),
            ),
          ),
          child: child!),
    );
    if (selected != null && selected != selectedDate) {
      selectedDate = selected;
    }
    return selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<ThemeProvider>(context).isDark;
    return CHICard(
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(pickedDate ?? widget.title,
              style: CHIStyles.mdNormalStyle.copyWith(
                  color: widget.selectedDate == null
                      ? CHIStyles.primaryTextColorLight
                      : CHIStyles.primaryTextColor)),
          SvgPicture.asset(widget.icon ?? 'assets/icons/calender.svg',
              fit: BoxFit.scaleDown),
        ],
      ),
      onTap: () async {
        widget.selectedDate = await datePicker(
          context,
          lastDate: widget.lastDate,
          isDark: isDark,
          selectedDate: widget.selectedDate ?? DateTime.now(),
        );
        pickedDate =
            DateFormat(widget.dateFormate).format(widget.selectedDate!);
        widget.onGetDate(widget.selectedDate!.millisecondsSinceEpoch);
        debugPrint(pickedDate);
        setState(() {});
      },
    );
  }
}

class CHIIosDatePicker extends StatefulWidget {
  const CHIIosDatePicker({Key? key}) : super(key: key);

  @override
  State<CHIIosDatePicker> createState() => _CHIIosDatePickerState();
}

class _CHIIosDatePickerState extends State<CHIIosDatePicker> {
  var finalDate = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime.now(),
                minimumYear: 1980,
                maximumYear: 2100,
                onDateTimeChanged: (val) {
                  finalDate = val.millisecondsSinceEpoch;
                }),
          ),
          CupertinoButton(
              child: Text('done'.toUpperCase()),
              onPressed: () {
                Navigator.of(context).pop();
                if (finalDate != 0) {
                  finalDate = finalDate ~/ 1000;
                  debugPrint('>>>>>>>>>>>>>>> $finalDate');
                } else {
                  finalDate = DateTime.now().millisecondsSinceEpoch ~/ 1000;
                  debugPrint('>>>>>>>>>>>>>>> $finalDate');
                }
              })
        ],
      ),
    );
  }
}

void showEndDatePicker(ctx) async {
  int? selectedEndDate = 0;
  var finalDate = 0;
  final DateTime? picked = await showDatePicker(
      context: ctx,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
      initialDate: DateTime.now());
  if (picked != null && picked != DateTime.now()) {
    finalDate = picked.millisecondsSinceEpoch;
    selectedEndDate = finalDate ~/ 1000;
    debugPrint('>>>>>>>>>>>>>>> $selectedEndDate');
  }
}
