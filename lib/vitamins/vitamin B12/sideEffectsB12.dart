// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class sideEffectsB12 extends StatelessWidget {
  const sideEffectsB12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 142, 196, 220),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      "Vitamin B12 deficiency occurs either due to a lack of absorption of vitamin B12, or a deficiency in the intrinsic factor that helps absorb vitamin B12 in people in the post-digestive system operation phase, or due to the use of some medications, or a lack of sources of vitamin B12 in the diet, or due to not relying on sources animals in the diet, which results in fatigue, weakness, constipation, loss of appetite, weight loss, and anemia. \nIt also causes neurological problems such as numbness and dullness in the hands and feet. \nOther symptoms may include problems with balance, depression, confusion, dementia, poor memory, and pain in the mouth or tongue. \nDeficiency in pregnant and breastfeeding women. \nIt may cause neural tube defects, delayed growth, and anemia in infants, and its deficiency can lead to damage to the nervous system even in people who do not suffer from anemia, so it is important to treat the deficiency quickly.\nWarning: Studies have shown that vitamin C can reduce the benefit of vitamin B12 in the digestive system because it reduces its absorption if mixed with it.",
                      style: TextStyle(fontSize: 16, wordSpacing: 2),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
