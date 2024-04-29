// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffectsD extends StatelessWidget {
  const sideEffectsD({super.key});

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
                    "Vitamin D deficiency causes general fatigue, delayed growth, and bone pain. It also increases the incidence of infections, as vitamin D plays an important role in maintaining the functions of the immune system.\nWarning: Studies have shown that the absorption of vitamin K may decrease when taken with other fat-soluble vitamins, such as vitamin E and vitamin D, so it is recommended to have an interval of at least two hours between these vitamins to increase their level of absorption.",
                    style: TextStyle(fontSize: 16, wordSpacing: 2),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
