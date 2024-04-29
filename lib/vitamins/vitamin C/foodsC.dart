// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class foodsC extends StatelessWidget {
  const foodsC({super.key});

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
                    "Fruits and vegetables are among the best sources of vitamin C. The method of obtaining the recommended chemistry is through eating a variety of foods that include the following citrus fruits such as oranges, grapefruit and their juices, as well as kiwi, pineapple, strawberries, cantaloupe, watermelon, cherries, mango, tomatoes, green peppers, broccoli, cauliflower, and baked potatoes.",
                    style: TextStyle(fontSize: 16, wordSpacing: 0),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
