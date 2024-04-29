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
            padding: const EdgeInsets.only(left: 8,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Iodine deficiency leads to a decrease in the production of thyroid hormones.\nSymptoms of severe iodine deficiency in pregnant women include stunted growth and mental abilities, and delayed sexual development.\nIn adults, a slight deficiency may lead to a decrease in work productivity, poor concentration, and enlargement of the thyroid gland.",
                  style: TextStyle(fontSize: 16, wordSpacing: 2),
                ),
              ],
            ),
          ),
        ));
  }
}
