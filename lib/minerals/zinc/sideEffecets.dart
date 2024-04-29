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
                  "Symptoms of zinc deficiency include delayed growth, decreased appetite and weight loss, hair loss, delayed wound healing, changes in the sense of taste, and weak immunity.\nYou should refrain from taking calcium, magnesium, or zinc together, as there is a conflict in their absorption.\nAvoid taking copper supplements with zinc at the same time because zinc, although beneficial in boosting the immune system, can hinder the body's absorption of important copper as well.",
                  style: TextStyle(fontSize: 16, wordSpacing: 2),
                ),

              ],
            ),
          ),
        ));
  }
}
