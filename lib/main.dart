import 'package:flutter/material.dart';

import 'package:cecom_flutter/pages/MainPage.dart' as MainPage;
import 'package:cecom_flutter/pages/MealPage.dart' as MealPage;
import 'package:cecom_flutter/pages/SchedulePage.dart' as SchedulePage;
import 'package:cecom_flutter/pages/NoticePage.dart' as NoticePage;
import 'package:cecom_flutter/pages/LibraryPage.dart' as LibraryPage;

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigateBase()
    );
  }
}

class NavigateBase extends StatefulWidget {
  const NavigateBase({super.key});

  @override
  State<StatefulWidget> createState() {
    return NavigateBaseState();
  }
}

class NavigateBaseState extends State<NavigateBase> {
  int curViewIndex = 0;
  final List<Widget> tabViewList = <Widget>[
    MainPage.MainPage(),
    MealPage.MealPage(),
    SchedulePage.SchedulePage(),
    NoticePage.NoticePage(),
    LibraryPage.LibraryPage()
  ];

  void onItemTapped(int idx){
    curViewIndex = idx;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: tabViewList.elementAt(curViewIndex)
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        currentIndex: curViewIndex,
        onTap: onItemTapped,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "박상우"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "박지우"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "신지연"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "장민석"),
        ],
      ) //MenuBottom
    );
  }
}