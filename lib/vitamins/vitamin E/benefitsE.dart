// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BenefitsE extends StatelessWidget {
  const BenefitsE({super.key});

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
                      "Vitamin E is considered one of the fat-soluble vitamins and is an important nutrient in the body because it is an antioxidant and helps maintain healthy skin and vision and strengthen the immune system. \nVitamin E plays an important role in strengthening the immune system so that it helps fight diseases and infections.\nVitamin E helps cells, tissues, and organs from damage. Being an antioxidant, it may reduce the risk of some diseases such as heart, cancer, and infections. \nVitamin E helps regulate the process of dilating blood vessels, which is important for blood flow in the body without obstacles, as it also prevents blood clotting problems.",
                      style: TextStyle(fontSize: 16, wordSpacing: 2),
                    ),
                  ),

                  Center(child: Text("Adults",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),

                  // SizedBox(
                  //   height: 15,
                  // ),
                  DataTable(columns: [
                    DataColumn(label: Text("Category")),
                    DataColumn(label: Text("(Milligrams/day)")),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text("Men")),
                      DataCell(Text("15")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Women")),
                      DataCell(Text("15")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Pregnant")),
                      DataCell(Text("15")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Breastfeeding")),
                      DataCell(Text("19")),
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
                    DataColumn(label: Text("(Milligrams/day)")),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text("0-6 months")),
                      DataCell(Text("4")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("7-12 months")),
                      DataCell(Text("5")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("1-3 years")),
                      DataCell(Text("6")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("4-8 years")),
                      DataCell(Text("7")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("9-13 years")),
                      DataCell(Text("11")),
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
