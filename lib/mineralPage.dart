// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types, prefer_const_literals_to_create_immutables, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled/minerals/calcium/calcium.dart';
import 'package:untitled/minerals/chromium/chromium.dart';
import 'package:untitled/minerals/copper/copper.dart';
import 'package:untitled/minerals/fluoride/fluoride.dart';
import 'package:untitled/minerals/iodine/iodine.dart';
import 'package:untitled/minerals/iron/iron.dart';
import 'package:untitled/minerals/magnesium/magnesium.dart';
import 'package:untitled/minerals/manganese/manganese.dart';
import 'package:untitled/minerals/molybdenum/molybdenum.dart';
import 'package:untitled/minerals/potassium/potassium.dart';
import 'package:untitled/minerals/selenium/selenium.dart';
import 'package:untitled/minerals/sodium/sodium.dart';
import 'package:untitled/minerals/zinc/zinc.dart';
import 'package:untitled/nav_bar/nav_bar.dart';

class mineralPage extends StatefulWidget {
  const mineralPage({super.key});

  @override
  State<mineralPage> createState() => _mineralPageState();
}

class _mineralPageState extends State<mineralPage> {
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
        backgroundColor:  Color.fromARGB(255,23,107,135),
        title: Text("Minerals",
          style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 230, 230, 230)
          ),
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
                    Color.fromARGB(255,23,107,135),
                    Color.fromARGB(255,0,150,220),
                    Colors.white
                  ]
              )
          ),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => calcium()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Calcium",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20,
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => chromium()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Chromium",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => copper()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Copper",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => fluoride()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Fluoride",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => iodine()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Iodine",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => iron()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Iron",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => magnesium()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Magnesium",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => manganese()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Manganese",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => molybdenum()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Molybdenum",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => potassium()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Potassium",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => selenium()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Selenium",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => sodium()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Sodium",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => zinc()));
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 230, 230, 230)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                      child: Container(
                          width: 350,
                          height: 55,
                          child: Center(child: const Text("Zinc",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20
                            ),
                          ),))
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
