// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, file_names, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'benefits.dart';
import 'foods.dart';
import 'sideEffecets.dart';

class fluoride extends StatefulWidget {
  const fluoride({super.key});

  @override
  State<fluoride> createState() => _vitaminAState();
}

class _vitaminAState extends State<fluoride> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 142, 196, 220),
            title: Text("Fluoride",
              style: TextStyle(color: Color.fromARGB(255, 1, 1, 1),
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
                indicator:ShapeDecoration(
                  color: const Color.fromARGB(255, 26, 154, 162),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
                labelColor: Color.fromARGB(255, 255, 255, 255),
                unselectedLabelColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 8),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor:Color.fromARGB(255, 142, 196, 220),
                splashFactory: NoSplash.splashFactory,
                tabs: [
                  Tab(
                    text: "Benefits",
                  ),
                  Tab(
                    text: "Food",
                  ),
                  Tab(
                    text: "Side Effect",
                  ),
                ]
            ),
          ),
          body: TabBarView(
              children: [
                Benefits(),
                foods(),
                sideEffects()
              ]),
        )

    );
  }
}
