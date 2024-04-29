// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, file_names, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
// import 'package:proojecttt/vitamins/vitamin%20B12/benefitsB12.dart';
// import 'package:proojecttt/vitamins/vitamin%20B12/foodsB12.dart';
// import 'package:proojecttt/vitamins/vitamin%20B12/sideEffectsB12.dart';
// import 'package:proojecttt/vitamins/vitamin%20B5/benefitsB5.dart';
// import 'package:proojecttt/vitamins/vitamin%20B5/foodsB5.dart';
// import 'package:proojecttt/vitamins/vitamin%20B5/sideEffectB5.dart';
// import 'package:proojecttt/vitamins/vitamin%20B6/benefitsB6.dart';
// import 'package:proojecttt/vitamins/vitamin%20B6/foodsB6.dart';
// import 'package:proojecttt/vitamins/vitamin%20B6/sideEffectsB6.dart';
// import 'package:proojecttt/vitamins/vitamin%20B7/benefitsB7.dart';
// import 'package:proojecttt/vitamins/vitamin%20B7/foodsB7.dart';
// import 'package:proojecttt/vitamins/vitamin%20B7/sideEffectsB7.dart';
// import 'package:proojecttt/vitamins/vitamin%20B9/benefitsB9.dart';
// import 'package:proojecttt/vitamins/vitamin%20B9/foodsB9.dart';
// import 'package:proojecttt/vitamins/vitamin%20B9/sideEffectsB9.dart';
import 'package:untitled/vitamins/vitamin%20B12/benefitsB12.dart';
import 'package:untitled/vitamins/vitamin%20B12/foodsB12.dart';
import 'package:untitled/vitamins/vitamin%20B12/sideEffectsB12.dart';

class vitaminB12 extends StatefulWidget {
  const vitaminB12({super.key});

  @override
  State<vitaminB12> createState() => _vitaminAState();
}

class _vitaminAState extends State<vitaminB12> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 142, 196, 220),
            title: Text("Vitamin B12",
              style: TextStyle(color: Colors.black),),
            centerTitle: true,
            bottom: TabBar(
                indicator:ShapeDecoration(
                  color: const Color.fromARGB(255, 26, 154, 162),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
                labelColor: Color.fromARGB(255, 254, 255, 255),
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
                BenefitsB12(),
                foodsB12(),
                sideEffectsB12()
              ]),
        )

    );
  }
}