import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      children: [
        Center(
          child: Text(
            'MAY',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[400],
              fontSize: 22,
              letterSpacing: 2,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(18),
          ),
          padding: const EdgeInsets.all(8),
          child: TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: DateTime(DateTime.now().year, 5, 1), // Focus on May
            headerVisible: false,
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
              ),
              weekendStyle: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
              ),
            ),
            calendarStyle: CalendarStyle(
              defaultTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              todayDecoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
              weekendTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              outsideTextStyle: TextStyle(
                color: Colors.transparent,
              ),
            ),
            calendarFormat: CalendarFormat.month,
            startingDayOfWeek: StartingDayOfWeek.monday,
            availableGestures: AvailableGestures.none,
            daysOfWeekHeight: 32,
            rowHeight: 40,
            sixWeekMonthsEnforced: true,
            onPageChanged: (_) {},
            onDaySelected: (_, __) {},
            selectedDayPredicate: (_) => false,
          ),
        ),
      ],
    );
  }
}
