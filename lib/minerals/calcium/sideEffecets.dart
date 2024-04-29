// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class sideEffects extends StatelessWidget {
  const sideEffects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 142, 196, 220),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20,),
                  child: Text(
                    "Calcium deficiency leads to osteoporosis in adults and rickets in children.\nCalcium deficiency is linked to vitamin D deficiency in many cases. Such as: rickets and osteomalacia.\nWarning: Magnesium and Calcium Experts recommend not taking magnesium with multivitamins, as it interferes with the absorption of smaller minerals found in multivitamins, such as iron and zinc.\nYou should refrain from taking calcium, magnesium, or zinc together, as there is a conflict in their absorption.",
                    style: TextStyle(fontSize: 16, wordSpacing: 0),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
