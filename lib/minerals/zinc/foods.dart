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
                  "Among the richest sources of zinc are oysters, followed by red meat, poultry, seafood, breakfast cereals fortified with zinc, and nuts. \nOther sources are whole grain products and legumes, but due to the presence of phytic acid, which reduces the absorption of zinc, they are considered weaker than animal sources.",
                  style: TextStyle(fontSize: 16, wordSpacing: 2),
                ),

              ],
            ),
          ),
        ));
  }
}
