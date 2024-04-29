// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffects extends StatelessWidget {
  const sideEffects({super.key});

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
                  "Potassium deficiency may occur due to diarrhea and constant vomiting, the use of laxatives, frequent dialysis, and the use of some medications. \nIts symptoms include high blood pressure, depletion of calcium stored in the bones, and increases the possibility of developing kidney stones.",
                  style: TextStyle(fontSize: 16, wordSpacing: 2),
                ),

              ],
            ),
          ),
        ));
  }
}
