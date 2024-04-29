// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, file_names, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
// import 'package:proojecttt/vitamins/vitamin%20B5/benefitsB5.dart';
// import 'package:proojecttt/vitamins/vitamin%20B5/foodsB5.dart';
// import 'package:proojecttt/vitamins/vitamin%20B5/sideEffectB5.dart';
import 'package:untitled/vitamins/vitamin%20B5/benefitsB5.dart';
import 'package:untitled/vitamins/vitamin%20B5/sideEffectB5.dart';

import 'foodsB5.dart';

class vitaminB5 extends StatefulWidget {
  const vitaminB5({super.key});

  @override
  State<vitaminB5> createState() => _vitaminAState();
}

class _vitaminAState extends State<vitaminB5> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 142, 196, 220),
            title: Text("Vitamin B5",
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
                BenefitsB5(),
                foodsB5(),
                sideEffectsB5()
              ]),
        )

    );
  }
}
