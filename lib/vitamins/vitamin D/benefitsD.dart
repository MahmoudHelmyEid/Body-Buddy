// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BenefitsD extends StatelessWidget {
  const BenefitsD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 142, 196, 220),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20,bottom: 35),
                    child: Text(
                      "Vitamin D is considered one of the fat-soluble vitamins and is an important nutrient for the health of the body’s immune system. \nVitamin D is made in the body if it is exposed to sunlight for a sufficient time. \nVitamin D plays an important role in regulating the immune system and reducing the risk of respiratory infections. \nVitamin D deficiency is also associated with it. With decreased immunity, therefore, increased exposure to infection. \nVitamin D is necessary for building and maintaining bones Since calcium is the main component of bones, it cannot be absorbed by the body unless vitamin D is present.",
                      style: TextStyle(fontSize: 16, wordSpacing: 2),
                    ),
                  ),

                  Center(child: Text("Adults",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),

                  // SizedBox(
                  //   height: 15,
                  // ),
                  DataTable(columns: [
                    DataColumn(label: Text("Category")),
                    DataColumn(label: Text("(Daily need)")),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text("Men, Women(19-70)")),
                      DataCell(Text("600")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Men, Women(+70)")),
                      DataCell(Text("800")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Pregnant")),
                      DataCell(Text("600")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Breastfeeding")),
                      DataCell(Text("600")),
                    ]),
                  ],
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0),width: 2),
                    ),
                    border: TableBorder.all(),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Center(child: Text("Children",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),

                  DataTable(columns: [
                    DataColumn(label: Text("Category")),
                    DataColumn(label: Text("(Daily need)")),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text("0-12 months")),
                      DataCell(Text("400")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("1-13 years")),
                      DataCell(Text("600")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("14-18 years")),
                      DataCell(Text("600")),
                    ]),
                  ],
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0),width: 2),
                    ),
                    border: TableBorder.all(),
                  ),
                ]),
          ),
        ),
      ),
      // )
    );
  }
}
