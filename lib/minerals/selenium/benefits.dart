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
                    padding: EdgeInsets.only(top: 20, bottom: 35),
                    child: Text(
                      "Selenium is an important mineral for reproduction, making DNA, maintaining thyroid function, and protecting the body from infection and free radicals.",
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
                      DataCell(Text("55")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Women")),
                      DataCell(Text("55")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Pregnant")),
                      DataCell(Text("60")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Breastfeeding")),
                      DataCell(Text("70")),
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
                      DataCell(Text("15")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("7-12 months")),
                      DataCell(Text("20")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("1-3 years")),
                      DataCell(Text("20")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("4-8 years")),
                      DataCell(Text("30")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("9-13 years")),
                      DataCell(Text("40")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("14-18 years")),
                      DataCell(Text("55")),
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
