// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class foodsB9 extends StatelessWidget {
  const foodsB9({super.key});

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
                    "Vitamin B9 is found naturally in many foods, and it is possible to obtain the recommended amount by eating a variety of foods, which include the following: vegetables, especially dark leafy ones such as spinach, fruits and fruit juices, especially oranges and orange juice, in addition to nuts, beans, peas, and grains, eggs, milk products, meat, and poultry. And seafood.",
                    style: TextStyle(fontSize: 16, wordSpacing: 0),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
