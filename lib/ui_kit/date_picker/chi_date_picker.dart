// ignore_for_file: use_build_context_synchronously, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../constants/chi_styles.dart';
import '../../themes/app_theme/chi_theme.dart';
import '../card/chi_card.dart';

class CHIDateTimePicker extends StatefulWidget {
  final DateTime? lastDate;
  final String title;
  final DateTime? firstDate;
  final Function(int? data) onGetDateTime;
  final String? dateFormate;
  final String? icon;
  final PickerType pickerType;
  DateTime? selectedDate;
  CHIDateTimePicker({
    Key? key,
    this.lastDate,
    required this.title,
    this.firstDate,
    required this.onGetDateTime,
    this.dateFormate,
    this.pickerType = PickerType.both,
    this.icon,
    this.selectedDate,
  }) : super(key: key);

  @override
  State<CHIDateTimePicker> createState() => _CHIDateTimePickerState();
}

class _CHIDateTimePickerState extends State<CHIDateTimePicker> {
  String? pickedDateTime;

  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<ThemeProvider>(context).isDark;
    return CHICard(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(pickedDateTime ?? widget.title,
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
            pickerType: widget.pickerType,
          );
          pickedDateTime =
              DateFormat(widget.dateFormate).format(widget.selectedDate!);
          widget.onGetDateTime(widget.selectedDate!.millisecondsSinceEpoch);
          debugPrint('$pickedDateTime');
          setState(() {});
        });
  }
}

Future<DateTime> datePicker(
  BuildContext context, {
  DateTime? lastDate,
  required bool isDark,
  required DateTime selectedDate,
  PickerType pickerType = PickerType.both,
  DateTime? firstDate,
}) async {
  if (pickerType == PickerType.date) {
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
  } else if (pickerType == PickerType.time) {
    final time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (time != null) {
      selectedDate =
          selectedDate.add(Duration(hours: time.hour, minutes: time.minute));
    }
  } else {
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
      final time =
          await showTimePicker(context: context, initialTime: TimeOfDay.now());
      final selectedDateTime =
          selected.add(Duration(hours: time!.hour, minutes: time.minute));
      selectedDate = selectedDateTime;
    }
  }
  return selectedDate;
}

enum PickerType { date, time, both }
