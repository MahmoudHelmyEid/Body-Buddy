// ignore_for_file: camel_case_types, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled/nav_bar/nav_bar_alarm.dart';
import 'package:untitled/nav_bar/nav_bar_minerals.dart';
import 'package:untitled/nav_bar/nav_bar_vitamins.dart';



class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  //     stops: [
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
              SizedBox(
                height: 130,
              ),

              Center(
                child: Text(
                  "Hello Body Buddy",
                  style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 30,
                    //  fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "font",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search....",
                      hintStyle:
                      TextStyle(color: const Color.fromARGB(66, 0, 0, 0)),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                        color: Color.fromARGB(255, 0, 0, 0),
                      )),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => nav_bar_vitamins()),
                      );
                    },
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          //border: Border.all(width: 3),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(170, 120, 120, 120),
                                spreadRadius: 2,
                                //  blurRadius: 8,
                                offset: Offset(6, 5)),
                          ],
                          color: Color.fromARGB(255, 208, 208, 208)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/img/Vitamin.png",
                            scale: .8,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Vitamin",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(.789)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => nav_bar_minerals()),
                      );
                    },
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(170, 120, 120, 120),
                                spreadRadius: 2,
                                //  blurRadius: 8,
                                offset: Offset(6, 5)),
                          ],
                          color: Color.fromARGB(255, 208, 208, 208)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/img/Mineral.png",
                            scale: .8,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Mineral",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(.789)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => nav_bar_alarm()),
                      );
                    },
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          //border: Border.all(width: 3),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(170, 120, 120, 120),
                                spreadRadius: 2,
                                //  blurRadius: 8,
                                offset: Offset(6, 5)),
                          ],
                          color: Color.fromARGB(255, 208, 208, 208)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/img/Alarm.png",
                            scale: .8,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Alarm",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(.789)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          //border: Border.all(width: 3),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(170, 120, 120, 120),
                                spreadRadius: 2,
                                //  blurRadius: 8,
                                offset: Offset(6, 5)),
                          ],
                          color: Color.fromARGB(255, 208, 208, 208)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/img/Water.png",
                            scale: .8,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Water",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(.789)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class myCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
