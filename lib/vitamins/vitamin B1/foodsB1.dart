// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class foodsB1 extends StatelessWidget {
  const foodsB1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 142, 196, 220),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20,),
                  child: Text(
                    "Many foods contain vitamin B1, such as fortified rice, whole grains, nuts, and seeds such as sunflower seeds.",
                    style: TextStyle(fontSize: 16, wordSpacing: 0),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
