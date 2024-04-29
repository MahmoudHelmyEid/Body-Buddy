// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffectsK extends StatelessWidget {
  const sideEffectsK({super.key});

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
                    "It is not common for a deficiency to occur in vitamin K due to the body’s ability to store it and also to the presence of vitamin K in good proportions in many foods that are eaten, but taking some medications may cause a deficiency in vitamin K, which in turn may cause a delay in the wound healing process and the occurrence of bleeding in some. \nNewborn children are considered the group most vulnerable to vitamin C deficiency, as infants are born with a small amount of the vitamin in their bodies. Therefore, infants are provided with a specific dose of vitamin C at birth to avoid bleeding cases.\nWarning: Studies have shown that the absorption of vitamin K may decrease when taken with other fat-soluble vitamins, such as vitamin E and vitamin D, so it is recommended to have an interval of at least two hours between these vitamins to increase their level of absorption.",
                    style: TextStyle(fontSize: 16, wordSpacing: 2),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
