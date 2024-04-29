import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login/sign_in.dart';
import 'package:untitled/netwoek/firebase_manager.dart';

class SignupPage extends StatelessWidget {
  static  String routName = "signup";
  //const SignupPage({super.key});
  //static const

  var _formkey = GlobalKey<FormState>();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var nameController=TextEditingController();
  var ageController=TextEditingController();
  var genderController=TextEditingController();
  var smokeController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            //height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 60.0),

                    const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Create your account",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    )
                  ],
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children:[
                      TextFormField(
                         controller: nameController,
                        decoration: InputDecoration(
                            hintText: "Username",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Colors.purple.withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.person)),
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please enter Username';}
                          return null ;
                        },

                      ),

                      const SizedBox(height: 20),
                      TextFormField(
                        controller: genderController,
                        decoration: InputDecoration(
                            hintText: "Gender(male or female)",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Colors.purple.withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.supervised_user_circle)),
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please enter Gender';}
                          return null ;
                        },

                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: ageController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Age",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.accessibility),
                        ),
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please enter Age';}
                          return null ;
                        },
                        obscureText: false,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: smokeController,
                        decoration: InputDecoration(
                            hintText: "Smoke(yes or no)",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Colors.purple.withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.smoking_rooms)),
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please enter are you smoke?';}
                          return null ;
                        },

                      ),

                      const SizedBox(height: 20),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Colors.purple.withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.email)),
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please enter Email';}
                          return null ;
                        },
                      ),

                      const SizedBox(height: 20),

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

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.password),
                        ),
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please enter Confirm Password';}
                          return null ;
                        },
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),

                    child: ElevatedButton(
                      onPressed: () {
                        if(_formkey.currentState!.validate()){
                          FirebaseManager.creatAccount(
                            nameController.text,
                              genderController.text,
                              int.parse(ageController.text),
                              smokeController.text,
                              emailController.text,
                              passwordController.text,(){
                            Navigator.pushNamedAndRemoveUntil(context, LoginPage.routName, (route) => false);
                          },(error){
                            showDialog(context: context,
                              barrierDismissible: false,
                              builder: (context) => AlertDialog(
                                title:Text("Error"),
                                content:Text(error.toString()),
                                actions:[
                                  ElevatedButton(onPressed: () {
                                    Navigator.pop(context);

                                  }, child: Text("Okay"))
                                ],

                            ),);
                          });
                        }
                      },

                      child: const Text(
                        "Sign up",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.purple,
                      ),
                    )
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (e) => LoginPage(),
                          ),
                          );
                        },
                        child: const Text("Login", style: TextStyle(color: Colors.purple),)
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}