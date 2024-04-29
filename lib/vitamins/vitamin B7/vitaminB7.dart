// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, file_names, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
// import 'package:proojecttt/vitamins/vitamin%20B5/benefitsB5.dart';
// import 'package:proojecttt/vitamins/vitamin%20B5/foodsB5.dart';
// import 'package:proojecttt/vitamins/vitamin%20B5/sideEffectB5.dart';
// import 'package:proojecttt/vitamins/vitamin%20B6/benefitsB6.dart';
// import 'package:proojecttt/vitamins/vitamin%20B6/foodsB6.dart';
// import 'package:proojecttt/vitamins/vitamin%20B6/sideEffectsB6.dart';
// import 'package:proojecttt/vitamins/vitamin%20B7/benefitsB7.dart';
// import 'package:proojecttt/vitamins/vitamin%20B7/foodsB7.dart';
// import 'package:proojecttt/vitamins/vitamin%20B7/sideEffectsB7.dart';
import 'package:untitled/vitamins/vitamin%20B7/benefitsB7.dart';
import 'package:untitled/vitamins/vitamin%20B7/foodsB7.dart';

import 'sideEffectsB7.dart';

class vitaminB7 extends StatefulWidget {
  const vitaminB7({super.key});

  @override
  State<vitaminB7> createState() => _vitaminAState();
}

class _vitaminAState extends State<vitaminB7> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 142, 196, 220),
            title: Text("Vitamin B7",
              style: TextStyle(color: Colors.black),),
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
                BenefitsB7(),
                foodsB7(),
                sideEffectsB7()
              ]),
        )

    );
  }
}