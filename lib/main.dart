import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // String name = "Shahzaib";
    // int age = 21;
    // double height = 5.6;
    // bool isMale = true;
    // num temperature = 35.5;
    // var day = 'zaibi';
    // const pi = 3.142;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginScreen(),
        "/login": (context) => LoginScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
