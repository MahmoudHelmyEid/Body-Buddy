import 'package:flutter/material.dart';
//import 'package:project/firstPage.dart';

class CustomPage extends StatelessWidget {
  const CustomPage({super.key, this.child});
  //, required FirstPage nextScreen
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),

        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            "assets/img/bg1.png.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: child!,
          ),
        ],
      ),
    );
  }
}
