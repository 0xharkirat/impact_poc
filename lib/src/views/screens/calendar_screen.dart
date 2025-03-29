import 'package:flutter/material.dart';
import 'package:impact_poc/src/views/base_scaffold.dart';
import 'package:impact_poc/src/views/widgets/custom_bin_calendar.dart';
import 'package:intl/intl.dart';


class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key, required this.showDrawer});
  final bool showDrawer;

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  final today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "Calendar",
      showDrawer: widget.showDrawer,
      body: CustomBinCalendar(
        binDay: DateTime.wednesday,
      ),
    );
  }
}
