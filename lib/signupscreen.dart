import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled/CustomPage.dart';
import 'package:untitled/LignInScreen.dart';
import 'package:untitled/nav_bar/nav_bar.dart';
import 'package:untitled/theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _date = TextEditingController();
  final _formSignupKey = GlobalKey<FormState>();
  bool agreePersonalData = true;
  bool password = true;
  //bool Conformpassword = true;


  var myusername , myemail , myPassword,birthDate ; //conformpassword ;

  // late String birthDate;

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  signup() async{
    var formdata = formstate.currentState;
    if(formdata!.validate()) {
      formdata.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: myemail,
            password: myPassword
        );
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }

    }else{
      print("Not Valid");
    }
  }


  @override
  Widget build(BuildContext context) {
    return CustomPage(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                // get started form
                child: Form(
                  key: formstate,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // get started text
                      Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                          color: lightColorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      // full name
                      TextFormField(
                        onSaved: (val){
                          myusername = val;
                        },
                        validator: (val) {
                          if (val!.length > 100) {
                            return 'username can not be larger than 100 letter';
                          }
                          if (val.length < 2) {
                            return 'username can not be less than 2 letter';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: const Text('User Name'),
                          suffixIcon: const Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          hintText: 'Enter User Name',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(
                        onSaved: (val){
                          birthDate = val.toString();
                        },
                        controller: _date,
                        decoration: InputDecoration(
                          //icon: Icon(Icons.calendar_today_rounded),
                          label: const Text('Birth Data'),
                          suffixIcon: const Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.grey,
                          ),
                          hintText: 'Enter Birth Data',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onTap: () async {
                          DateTime? pickeddate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101));
                          print("====================================================");
                          print(pickeddate.runtimeType);
                          print("====================================================");

                          if (pickeddate != null) {
                            setState(() {
                              _date.text =
                                  DateFormat('yyyy/MM/dd').format(pickeddate);
                            });
                          }
                        },
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please enter Age';
                        //   }
                        //   return null;
                        // },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      // email
                      TextFormField(
                        onSaved: (val){
                          myemail = val;
                        },
                        validator: (val) {
                          if (val!.length > 100) {
                            return 'Email can not be larger than 100 letter';
                          }
                          if (val.length < 2) {
                            return 'Email can not be less than 2 letter';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          label: const Text('Email'),
                          hintText: 'Enter Email',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      // password
                      TextFormField(
                        onSaved: (val){
                          myPassword = val;
                        },
                        obscureText: password,
                        obscuringCharacter: '*',
                        validator: (val) {
                          if (val!.length > 100) {
                            return 'Password can not be larger than 100 letter';
                          }
                          if (val.length < 4) {
                            return 'Password can not be less than 4 letter';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  password = !password;
                                });
                              },
                              icon: Icon(
                                password
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              )
                            //icon: Icon(Icons.visibility_off),
                          ),
                          label: const Text('Password'),
                          hintText: 'Enter Password',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      // TextFormField(
                      //   onSaved: (val){
                      //     conformpassword = val;
                      //   },
                      //   obscureText: Conformpassword,
                      //   obscuringCharacter: '*',
                      //   validator: (val) {
                      //     if (val!.length > 100) {
                      //       return 'Password can not be larger than 100 letter';
                      //     }
                      //     if (val.length < 4) {
                      //       return 'Password can not be less than 4 letter';
                      //     }
                      //     return null;
                      //   },
                      //   decoration: InputDecoration(
                      //     suffixIcon: IconButton(
                      //         onPressed: () {
                      //           setState(() {
                      //             Conformpassword = !Conformpassword;
                      //           });
                      //         },
                      //         icon: Icon(
                      //           Conformpassword
                      //               ? Icons.visibility_off
                      //               : Icons.visibility,
                      //         )
                      //       //icon: Icon(Icons.visibility_off),
                      //     ),
                      //     label: const Text('Conform Password'),
                      //     hintText: 'Enter Conform Password',
                      //     hintStyle: const TextStyle(
                      //       color: Colors.black26,
                      //     ),
                      //     border: OutlineInputBorder(
                      //       borderSide: const BorderSide(
                      //         color: Colors.black12, // Default border color
                      //       ),
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide: const BorderSide(
                      //         color: Colors.black12, // Default border color
                      //       ),
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //   ),
                      // ),
                      // i agree to the processing
                      Row(
                        children: [
                          Checkbox(
                            value: agreePersonalData,
                            onChanged: (bool? value) {
                              setState(() {
                                agreePersonalData = value!;
                              });
                            },
                            activeColor: lightColorScheme.primary,
                          ),
                          const Text(
                            'I agree to the processing of ',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          Text(
                            'Personal data',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: lightColorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      // signup button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          // onPressed: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => nav_bar())
                          //   );
                            // if (_formSignupKey.currentState!.validate() &&
                            //     agreePersonalData) {
                            //   ScaffoldMessenger.of(context).showSnackBar(
                            //     const SnackBar(
                            //       content: Text('Processing Data'),
                            //     ),
                            //   );
                            // } else if (!agreePersonalData) {
                            //   ScaffoldMessenger.of(context).showSnackBar(
                            //     const SnackBar(
                            //         content: Text(
                            //             'Please agree to the processing of personal data')),
                            //   );
                            // }
                          //},
                          onPressed: () async{
                            UserCredential? response = await signup();
                            if(response != null){
                              Navigator.of(context).pushReplacementNamed(nav_bar as String );
                            }
                          },

                          child: Container(
                            child: const Text('Sign up'),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(400)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70.0,
                      ),
                      // sign up divider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 10,
                            ),
                            child: Text(
                              'Sign up with',
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      // sign up social media logo
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        //children: [
                        //Logo(Logos.facebook_f),
                        //Logo(Logos.twitter),
                        // Logo(Logos.google),
                        // Logo(Logos.apple),
                        //],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // already have an account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account? ',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const lignInScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: lightColorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(DiagnosticsProperty<DateTime>('birthDate', birthDate));
  //}
}
