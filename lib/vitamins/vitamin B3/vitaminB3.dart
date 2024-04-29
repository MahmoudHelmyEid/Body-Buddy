// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, file_names, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
// import 'package:proojecttt/vitamins/vitamin%20B3/benefitsB3.dart';
// import 'package:proojecttt/vitamins/vitamin%20B3/foodsB3.dart';
// import 'package:proojecttt/vitamins/vitamin%20B3/sideEffectsB3.dart';
import 'package:untitled/vitamins/vitamin%20B3/benefitsB3.dart';
import 'package:untitled/vitamins/vitamin%20B3/foodsB3.dart';
import 'package:untitled/vitamins/vitamin%20B3/sideEffectsB3.dart';

class vitaminB3 extends StatefulWidget {
  const vitaminB3({super.key});

  @override
  State<vitaminB3> createState() => _vitaminAState();
}

class _vitaminAState extends State<vitaminB3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 142, 196, 220),
            title: Text("Vitamin B3",
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
                BenefitsB3(),
                foodsB3(),
                sideEffectsB3()
              ]),
        )

    );
  }
}
