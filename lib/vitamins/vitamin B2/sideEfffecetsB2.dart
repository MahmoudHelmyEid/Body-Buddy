// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffectsB2 extends StatelessWidget {
  const sideEffectsB2({super.key});

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
                  padding: EdgeInsets.only(top: 25,),
                  child: Text(
                    "Vitamin B2 deficiency may cause hormonal disturbances, as it is important in many metabolic processes, in addition to skin problems, digestive problems, and fatigue in general.",
                    style: TextStyle(fontSize: 16, wordSpacing: 2),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
