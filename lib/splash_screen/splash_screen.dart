// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled/WelcomeScreen.dart';
import 'package:untitled/auth.dart';

class splash_screen extends StatelessWidget {
  static  String routName = "splashScreen";

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 240,
      duration: 2000,
      splashTransition: SplashTransition.rotationTransition,
      //pageTransitionType: PageTransitionType.topToBottom,
      backgroundColor: Color.fromARGB(255, 0, 150, 220),
      splash: const CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage("assets/img/logo.png"),
      ),
      nextScreen:  Auth(),
    );
  }
}
