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
                  "Magnesium deficiency often does not occur in healthy people due to not consuming dietary sources of magnesium, because the kidneys limit its elimination in the urine. However, if food sources of magnesium are not consumed for a long time or if excess magnesium is eliminated from the body due to some diseases or when taking some medications, it may lead to the appearance of deficiency symptoms such as: lack of appetite, nausea and vomiting, general weakness in the body, and the symptoms may develop into Numbness in the extremities, muscle spasms, irregular heartbeat.\nWarning: Magnesium and Calcium Experts recommend not taking magnesium with multivitamins, as it interferes with the absorption of smaller minerals found in multivitamins, such as iron and zinc.\nYou should refrain from taking calcium, magnesium, or zinc together, as there is a conflict in their absorption.",
                  style: TextStyle(fontSize: 16, wordSpacing: 2),
                ),

              ],
            ),
          ),
        ));
  }
}
