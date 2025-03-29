import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class CustomBinCalendar extends StatefulWidget {
  const CustomBinCalendar({
    super.key,
    required this.binDay,
    this.oddBinDayColor = Colors.yellow,
    this.evenBinDayColor = Colors.green, this.specialBinDayColor, this.specialBinDay,
  });

  /// type DateTime.wednesday, DateTime.friday, etc.
  final int binDay;

  final DateTime? specialBinDay;

  final Color? oddBinDayColor;

  final Color? evenBinDayColor;
  
  final Color? specialBinDayColor;

  @override
  State<CustomBinCalendar> createState() => _CustomBinCalendarState();
}

class _CustomBinCalendarState extends State<CustomBinCalendar> {
  DateTime currentMonth = DateTime.now();

  void _goToPreviousMonth() {
    setState(() {
      currentMonth = DateTime(currentMonth.year, currentMonth.month - 1);
    });
  }

  void _goToNextMonth() {
    setState(() {
      currentMonth = DateTime(currentMonth.year, currentMonth.month + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final firstDayOfMonth = DateTime(currentMonth.year, currentMonth.month, 1);
    final daysInMonth = DateUtils.getDaysInMonth(
      currentMonth.year,
      currentMonth.month,
    );
    final firstWeekdayOffset = (firstDayOfMonth.weekday) % 7;
    final totalCells = firstWeekdayOffset + daysInMonth;
    final totalRows = (totalCells / 7.0).ceil();

    final days = List.generate(totalRows * 7, (index) {
      final dayNumber = index - firstWeekdayOffset + 1;
      return (index < firstWeekdayOffset || dayNumber > daysInMonth)
          ? null
          : DateTime(currentMonth.year, currentMonth.month, dayNumber);
    });

    return Column(
      children: [
        /// Header (Month Year + Arrows)
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: _goToPreviousMonth,
                icon: const Icon(Icons.chevron_left),
              ),
              Text(
                DateFormat.yMMMM().format(currentMonth),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: _goToNextMonth,
                icon: const Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),

        /// Days of the week
        Row(
          children: [
            for (final label in [
              'Sun',
              'Mon',
              'Tue',
              'Wed',
              'Thu',
              'Fri',
              'Sat',
            ])
              Expanded(
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),

        /// Calendar Grid
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: days.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            final day = days[index];
            if (day == null) return const SizedBox.shrink();

            final isToday =
                day.year == today.year &&
                day.month == today.month &&
                day.day == today.day;

            final isBinDay = day.weekday == widget.binDay;
            final weekNumber = ((day.day + firstWeekdayOffset - 1) / 7).floor();
            final isEvenBinDay = isBinDay && weekNumber.isEven;

            Color? backgroundColor;
            if (isBinDay) {
              backgroundColor =
                  isEvenBinDay ? widget.evenBinDayColor : widget.oddBinDayColor;
            }
            if (isToday) {
              backgroundColor = Colors.blue;
            }

            return Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(
                '${day.day}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                  color: isToday ? Colors.white : Colors.black,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
