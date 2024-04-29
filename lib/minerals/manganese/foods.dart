// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class foods extends StatelessWidget {
  const foods ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 142, 196, 220),
          child: Padding(
            padding: const EdgeInsets.only(left: 8,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Manganese is found in many foods, such as whole grain products, shellfish, nuts, legumes, green leafy vegetables, some fruits such as pineapple, blueberries, blueberries, tea, and many spices such as black pepper.",
                  style: TextStyle(fontSize: 16, wordSpacing: 2),
                ),

              ],
            ),
          ),
        ));
  }
}
