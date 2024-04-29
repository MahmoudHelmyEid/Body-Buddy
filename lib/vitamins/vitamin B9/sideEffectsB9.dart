// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffectsB9 extends StatelessWidget {
  const sideEffectsB9({super.key});

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
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    "Vitamin B9 deficiency is not common, but it occurs if a sufficient amount of it is not consumed in the diet, and it results in anemia, and its symptoms include: weakness, difficulty concentrating, irritability, headache, heart palpitations, shortness of breath, and fatigue. \nIt can also cause sores on the tongue and inside the mouth, in addition to changes in the color of the skin, hair, and nails. \nWomen who suffer from vitamin B9 deficiency increase the risk of fetuses suffering from neural tube defects, low fetal weight at birth, premature birth, and delayed fetal growth.",
                    style: TextStyle(fontSize: 16, wordSpacing: 2),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
