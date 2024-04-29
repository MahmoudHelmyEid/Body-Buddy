// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class foodsD extends StatelessWidget {
  const foodsD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 142, 196, 220),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20,),
                  child: Text(
                    "Some foods contain vitamin D naturally, such as eggs, especially the egg yolk, which is the source of vitamin D, liver and kidneys, but in small quantities.",
                    style: TextStyle(fontSize: 16, wordSpacing: 0),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
