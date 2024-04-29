// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, file_names, sized_box_for_whitespace, unused_import, unnecessary_import

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'benefitsA.dart';
import 'foodsA.dart';
import 'sideEffecetsA.dart';

class vitaminA extends StatefulWidget {
  const vitaminA({super.key});

  @override
  State<vitaminA> createState() => _vitaminAState();
}

class _vitaminAState extends State<vitaminA> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            //  elevation: 0,
            backgroundColor: Color.fromARGB(255, 142, 196, 220),
            title: Text("Vitamin A",
              style: TextStyle(color: Colors.black),),
            centerTitle: true,
            bottom: TabBar(
                indicator:ShapeDecoration(
                  color: const Color.fromARGB(255, 26, 154, 162),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
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
                BenefitsA(),
                foodsA(),
                sideEffectsA()
              ]),
        )

    );
  }
}
