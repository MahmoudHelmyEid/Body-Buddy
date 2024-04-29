// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffectsA extends StatelessWidget {
  const sideEffectsA({super.key});

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
                    "Warning for pregnant women: Taking large amounts of vitamin A can harm the fetus. Therefore, excessive intake of vitamin A and its products should be avoided, and it is important to consult a doctor.",
                    style: TextStyle(fontSize: 16, wordSpacing: 0),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Vitamin A deficiency can cause vision problems, dry skin and skin, increased risk of infection, and poor growth.",
                  style: TextStyle(fontSize: 16, wordSpacing: 2),
                ),


              ],
            ),
          ),
        ));
  }
}
