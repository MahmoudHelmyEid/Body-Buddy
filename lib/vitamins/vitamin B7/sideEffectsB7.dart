// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffectsB7 extends StatelessWidget {
  const sideEffectsB7({super.key});

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
                    "Vitamin B7 deficiency may be rare in people who eat a balanced diet, but when it occurs, some symptoms may appear, such as hair loss, brittle nails, and a skin rash around the eyes, nose, and mouth.",
                    style: TextStyle(fontSize: 16, wordSpacing: 2),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
