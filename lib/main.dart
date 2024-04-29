

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/alarm/enums.dart';
import 'package:untitled/alarm/models/menu_info.dart';
import 'package:untitled/auth.dart';
import 'package:untitled/firebase_options.dart';
import 'package:untitled/login/sign_in.dart';
//import 'package:untitledgit init/login/sign_in.dart';
import 'package:untitled/login/sign_up.dart';
import 'package:untitled/nav_bar/nav_bar.dart';
import 'package:untitled/splash_screen/splash_screen.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class NavBar {
  const NavBar(); // Ensure NavBar constructor is marked as const
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MenuInfo>(
        create: (context) => MenuInfo(MenuType.clock, imageSource: '', title: ''),
        child:  MaterialApp(
          initialRoute: splash_screen.routName,
          routes: {
            Auth.routName:(context) => Auth(),
            LoginPage.routName: (context) => LoginPage(),
            SignupPage.routName: (context) => SignupPage(),
            splash_screen.routName: (context) => splash_screen(),
            nav_bar.routeName: (context) => nav_bar(),
          },
            debugShowCheckedModeBanner: false,
            home:splash_screen()

        )
    );
  }
}
