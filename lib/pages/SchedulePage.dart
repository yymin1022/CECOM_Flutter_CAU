//박지우님 page
import "package:flutter/material.dart";
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget TopSection = Container(
      padding: const EdgeInsets.only(left:20, right:20, top:32, bottom:8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children:[
                      Icon(
                        Icons.star,
                        color: Colors.deepPurple[500],
                      ),
                      Text("Monthly Schedule Page",
                        style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget SetBox = Container(
        padding: const EdgeInsets.only(left:20, right:20, top:20, bottom:20),
        height: 100, width:300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.deepPurple, width: 1)
        )
    );

    Widget SetLine = Container(
        padding: const EdgeInsets.only(left:20, right:20, top:30, bottom:10), width: 500,
        child: Divider(color: Colors.deepPurple, thickness: 2.0));


    Widget CalenderContainer = Container(
      padding: const EdgeInsets.only(left:20, right:20, top:10, bottom:20),
      child:       TableCalendar(
        firstDay: DateTime.utc(2019, 10, 22),
        lastDay: DateTime.utc(2030, 10, 22),
        focusedDay: DateTime.now(),

        headerStyle: HeaderStyle(
          titleCentered: true,
          titleTextFormatter: (date, locale) =>
              DateFormat.yMMMMd(locale).format(date),
          formatButtonVisible: false,
          titleTextStyle: const TextStyle(
            fontSize: 20.0,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("CECOM Flutter APP"),
      ),
      body: Container(
        child: Column(
          children: [TopSection, SetBox, SetLine, CalenderContainer],
        ),
      ),
    );
  }
}