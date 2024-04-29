// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:proojecttt/alarm/views/home_alarm.dart';
// import 'package:proojecttt/homePage.dart';
// import 'package:proojecttt/mineralPage.dart';
// import 'package:proojecttt/vitaminPage.dart';
import 'package:untitled/HomeScreen.dart';
import 'package:untitled/alarm/views/home_alarm.dart';
import 'package:untitled/mineralPage.dart';
import 'package:untitled/vitaminPage.dart';

class nav_bar_alarm extends StatefulWidget {
  @override
  State<nav_bar_alarm> createState() => _nav_barState();
}

class _nav_barState extends State<nav_bar_alarm> {
  //const nav_bar({super.key});
  int _currentIndex = 0;

  List<Widget> listOptions = <Widget>[
    home_alarm(),
    mineralPage(),
    homePage(),
    vitaminPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 66, 114, 131),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 25),
            child: GNav(
                selectedIndex: _currentIndex,
                onTabChange: (index) {
                  setState(
                        () {
                      _currentIndex = index;
                    },
                  );
                },
                color: Colors.white,
                curve: Curves.linear,
                //rippleColor: Color.fromARGB(255, 30, 27, 30),
                activeColor: Colors.white,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                padding: EdgeInsets.only(left: 0),
                gap: 8,
                tabs: const [
                  GButton(
                    icon: Icons.alarm,
                    iconSize: 25,
                    text: 'Alarm',
                  ),
                  GButton(
                    icon: Icons.auto_awesome,
                    text: 'Minerals',
                  ),
                  GButton(
                    icon: Icons.home,
                    iconSize: 25,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    iconSize: 23,
                    text: 'Vitamins',
                  ),

                ]),
          ),
        ),
        body: listOptions.elementAt(_currentIndex));
  }
}
