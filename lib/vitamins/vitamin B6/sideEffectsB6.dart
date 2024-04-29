// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffectsB6 extends StatelessWidget {
  const sideEffectsB6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 142, 196, 220),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25, ),
                  child: Text(
                    "Vitamin B6 deficiency may cause anemia, skin infections around the mouth, weak immunity, headaches, and fatigue, and if severe deficiency causes depression.",
                    style: TextStyle(fontSize: 16, wordSpacing: 2),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
