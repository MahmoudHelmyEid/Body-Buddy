import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/HomeScreen.dart';
//import 'package:untitled/LignInScreen.dart';
import 'package:untitled/WelcomeScreen.dart';
import 'package:untitled/nav_bar/nav_bar.dart';
class Auth extends StatelessWidget {
  static  String routName = "auth";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context,snapshot) {
          if(snapshot.hasData){
            return nav_bar();
          }else{
            return WelcomeScreen();
          }
        }),

      )
    );
  }
}
