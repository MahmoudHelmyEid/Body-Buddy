// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BenefitsB3 extends StatelessWidget {
  const BenefitsB3({super.key});

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
                    padding: EdgeInsets.only(top: 20,bottom: 35 ),
                    child: Text(
                      "Vitamin B3 is a type of water-soluble vitamin and is known as niacin. It is one of the important vitamins to have in the diet. The need for vitamin B3 lies in contributing to many metabolic processes and also helping in the growth and function of cells in the body. It helps in converting food into energy.",
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
                      DataCell(Text("16")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("women")),
                      DataCell(Text("14")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Pregnant")),
                      DataCell(Text("18")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Breastfeeding")),
                      DataCell(Text("17")),
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
                      DataCell(Text("2")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("7-12 months")),
                      DataCell(Text("4")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("1-3 years")),
                      DataCell(Text("6")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("4-8 years")),
                      DataCell(Text("8")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("9-13 years")),
                      DataCell(Text("12")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("14-18 years")),
                      DataCell(Text("14-16")),
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
