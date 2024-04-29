// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffectsB1 extends StatelessWidget {
  const sideEffectsB1({super.key});

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
                    "Vitamin B1 deficiency may lead to weight loss, general weakness, and frequent forgetfulness. It may affect the heart and blood vessels, dilatation of the arteries, low blood pressure, and irregular heartbeat.\nSevere vitamin B1 deficiency leads to what is called beriberi, which is a disease that affects the nervous system, leading to neuropathy, paresthesias in the extremities, especially the legs, muscle atrophy, and a state of severe lethargy and weakness.",
                    style: TextStyle(fontSize: 16, wordSpacing: 2),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
