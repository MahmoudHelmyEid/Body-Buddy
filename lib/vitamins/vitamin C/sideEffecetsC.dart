// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffectsC extends StatelessWidget {
  const sideEffectsC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 142, 196, 220),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25,),
                  child: Text(
                    "Vitamin C deficiency is a rare condition if it is abundant in most foods, but when consuming less than 10 mg per day for several weeks, it is possible to develop scurvy, which causes fatigue, stomach inflammation, the appearance of spots on the skin, pain in the joints, and weakness in healing wounds. \nIt also causes swollen and bleeding gums and loss of teeth and anemia.\nWarning: Studies have shown that vitamin C can reduce the benefit of vitamin B12 in the digestive system because it reduces its absorption if mixed with it.",
                    style: TextStyle(fontSize: 16, wordSpacing: 2),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
