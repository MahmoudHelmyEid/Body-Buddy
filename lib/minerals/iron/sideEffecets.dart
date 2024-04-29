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
                  "Not consuming food sources rich in iron. Symptoms of deficiency do not appear in the short term, but in the long term, after the body’s stores of iron are exhausted, symptoms of anemia begin to appear, including: general weakness, fatigue, lethargy, digestive symptoms, and problems with concentration and memory.\nWarning: Iron and green tea Green tea is not considered a nutritional supplement, but rather a beneficial drink rich in antioxidants. However, green tea can cause iron deficiency if consumed in large quantities for long periods, and iron in turn reduces the effectiveness of green tea.",
                  style: TextStyle(fontSize: 16, wordSpacing: 2),
                ),

              ],
            ),
          ),
        ));
  }
}
