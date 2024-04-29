// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Benefits extends StatelessWidget {
  const Benefits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 142, 196, 220),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20,bottom: 35 ),
                    child: Text(
                      "Copper is an important mineral for maintaining general health and brain development, especially for infants. Copper is involved in many vital processes in the body, such as manufacturing energy, blood vessels and tissues. It also maintains the health of the nervous and immune systems.",
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
                      DataCell(Text("900")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Women")),
                      DataCell(Text("900")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Pregnant")),
                      DataCell(Text("1000")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Breastfeeding")),
                      DataCell(Text("1300")),
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
                      DataCell(Text("200")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("7-12 months")),
                      DataCell(Text("200")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("1-3 years")),
                      DataCell(Text("340")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("4-8 years")),
                      DataCell(Text("440")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("9-13 years")),
                      DataCell(Text("700")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("14-18 years")),
                      DataCell(Text("890")),
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
