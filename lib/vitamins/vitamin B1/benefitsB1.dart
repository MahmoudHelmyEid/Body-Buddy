// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BenefitsB1 extends StatelessWidget {
  const BenefitsB1({super.key});

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
                      "One B vitamin is a type of water-soluble vitamin. Thiamine acts as a coenzyme in the process of carbohydrate metabolism within the body, as it contributes to the production of energy from nutrients and also plays an important role in the development and performance of nerve cells.",
                      style: TextStyle(fontSize: 16, wordSpacing: 2),
                    ),
                  ),

                  Center(child: Text("Adults",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),

                  // SizedBox(
                  //   height: 15,
                  // ),
                  DataTable(columns: [
                    DataColumn(label: Text("category")),
                    DataColumn(label: Text("(milligrams/day)")),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text("men")),
                      DataCell(Text("1.2")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("women")),
                      DataCell(Text("1.1")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Pregnant")),
                      DataCell(Text("1.4")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Breastfeeding")),
                      DataCell(Text("1.5")),
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
                    DataColumn(label: Text("category")),
                    DataColumn(label: Text("(milligrams/day)")),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text("0-6 months")),
                      DataCell(Text("0.2")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("7-12 months")),
                      DataCell(Text("0.3")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("1-3 years")),
                      DataCell(Text("0.5")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("4-6 years")),
                      DataCell(Text("0.6")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("9-7 years")),
                      DataCell(Text("0.9")),
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
