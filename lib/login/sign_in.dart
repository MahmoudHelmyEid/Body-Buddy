import 'package:flutter/material.dart';
import 'package:untitled/login/sign_up.dart';
import 'package:untitled/nav_bar/nav_bar.dart';
import 'package:untitled/netwoek/firebase_manager.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});
  static  String routName = "login";

  var _formkey=GlobalKey<FormState>();
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Enter your credential to login"),
      ],
    );
  }

  _inputField(context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none
                ),

                fillColor: Colors.purple.withOpacity(0.1),
                filled: true,
                prefixIcon: const Icon(Icons.person)),
            validator: (value){
              if (value == null || value.isEmpty) {
                return 'Please enter email';}
              return null ;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Colors.purple.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.password),
            ),
            validator: (value){
              if (value == null || value.isEmpty) {
              return 'Please enter password';}
              return null ;
            },
            obscureText: true,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if(_formkey.currentState!.validate()){
                FirebaseManager.login(emailController.text, passwordController.text, (){
                  Navigator.pushNamedAndRemoveUntil(context, nav_bar.routeName, (route) => false);
                }, (message){
                  showDialog(context: context,
                    barrierDismissible: false,
                    builder: (context) =>AlertDialog(
                    title: Text("Verify"),
                    content: Text(message),
                    actions: [
                      ElevatedButton(onPressed: () {
                        Navigator.pop(context);
                      }, child: Text("Okay"))
                    ],
                  ) ,);
                });
              }
            },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: Colors.purple,
            ),
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 20, color: Colors.white),
      
            ),
          )
        ],
      ),
    );
  }

  _forgotPassword(context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Forgot password?",
        style: TextStyle(color: Colors.purple),
      ),
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account? "),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (e) => SignupPage(),
              ),
              );
            },
            child: const Text("Sign Up", style: TextStyle(color: Colors.purple),)
        )
      ],
    );
  }
}