// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, camel_case_types, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled/nav_bar/nav_bar.dart';
import 'package:untitled/vitamins/vitamin%20A/vitaminA.dart';
import 'package:untitled/vitamins/vitamin%20B1/vitaminB1.dart';
import 'package:untitled/vitamins/vitamin%20B12/vitaminB12.dart';
import 'package:untitled/vitamins/vitamin%20B2/vitaminB2.dart';
import 'package:untitled/vitamins/vitamin%20B3/vitaminB3.dart';
import 'package:untitled/vitamins/vitamin%20B5/vitaminB5.dart';
import 'package:untitled/vitamins/vitamin%20B6/vitaminB6.dart';
import 'package:untitled/vitamins/vitamin%20B7/vitaminB7.dart';
import 'package:untitled/vitamins/vitamin%20B9/vitaminB9.dart';
import 'package:untitled/vitamins/vitamin%20C/vitaminC.dart';
import 'package:untitled/vitamins/vitamin%20D/vitaminD.dart';
import 'package:untitled/vitamins/vitamin%20E/vitaminE.dart';
import 'package:untitled/vitamins/vitamin%20K/vitaminK.dart';

class vitaminPage extends StatefulWidget {
  const vitaminPage({super.key});

  @override
  State<vitaminPage> createState() => _vitaminPageState();
}

class _vitaminPageState extends State<vitaminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => nav_bar()));
          },
        ),
        backgroundColor: Color.fromARGB(255, 23, 107, 135),
        title: Text(
          "Vitamins",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 230, 230, 230)),
          textAlign: TextAlign.center,
        ),
        elevation: 15,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // stops: [
                  //   .25,
                  //   .9
                  // ],
                  colors: [
                    Color.fromARGB(255, 23, 107, 135),
                    Color.fromARGB(255, 0, 150, 220),
                    Colors.white
                  ])),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminA()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin A",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminB1()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin B1",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminB2()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin B2",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminB3()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin B3",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminB5()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin B5",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminB6()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin B6",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminB7()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin B7",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminB9()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin B9",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminB12()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin B12",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminC()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin C",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminD()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin D",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminE()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin E",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vitaminK()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(
                            child: const Text(
                              "vitamin K",
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
