// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class foodsB5 extends StatelessWidget {
  const foodsB5({super.key});

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
                    "Vitamin 5 is found in many foods, such as meat, poultry, eggs, milk, vegetables such as mushrooms, and whole grains such as oats, nuts, and seeds.",
                    style: TextStyle(fontSize: 16, wordSpacing: 0),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
