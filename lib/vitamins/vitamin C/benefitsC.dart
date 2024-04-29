// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BenefitsC extends StatelessWidget {
  const BenefitsC({super.key});

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
                      "Vitamin C is one of the water-soluble vitamins, also known as (ascorbic acid) \nIt works in the body as an antioxidant and helps protect cells from damage due to free radicals (which are compounds formed when our bodies convert food into energy or through cigarette smoke, air pollution, or ultraviolet rays). \nVitamin C is needed to make collagen, which is a protein that helps heal wounds and maintain the health of the skin, blood vessels and bones. \nIt also helps in improving the absorption of iron from plant sources. Vitamin C also helps support the immune system so that it works well to protect the body from diseases.",
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
                      DataCell(Text("90")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("women")),
                      DataCell(Text("75")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Pregnant")),
                      DataCell(Text("85")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Breastfeeding")),
                      DataCell(Text("120")),
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
                      DataCell(Text("40")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("7-12 months")),
                      DataCell(Text("50")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("1-3 years")),
                      DataCell(Text("15")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("4-8 years")),
                      DataCell(Text("25")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("9-13 years")),
                      DataCell(Text("45")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("14-18 years")),
                      DataCell(Text("75")),
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
