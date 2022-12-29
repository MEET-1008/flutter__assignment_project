// ignore_for_file: prefer_const_constructors

import 'package:assignment/sum.dart';
import 'package:flutter/material.dart';

import 'ass1.dart';
// import 'ass2.dart';
import 'ass2.dart';
import 'ass3.dart';
import 'ass4.dart';
import 'ass5.dart';
import 'ass6.dart';
import 'ass7.dart';
import 'ass8.dart';
import 'loginpage.dart';

void main() {
  runApp(myapp());
}

class MyRoutes {
  static String sumroute = "/sum";
  static String ass1route = "/ass1";
  static String ass3route = "/ass3";
  static String ass2route = "/ass2";
  static String ass5route = "/ass5";
  static String ass8route = "/ass8";
  static String ass7route = "/ass7";
  static String ass6route = "/ass6";
  static String ass4route = "/ass4";
  static String loginroute = "/login";
}

// ignore: camel_case_types
class myapp extends StatelessWidget {
  const myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: "/ass1",
      routes: {
        MyRoutes.sumroute: (context) => sum(),
        MyRoutes.ass1route: (context) => ass1(),
        MyRoutes.ass2route: (context) => ass2(),
        MyRoutes.ass3route: (context) => ass3(),
        MyRoutes.ass4route: (context) => ass4(),
        MyRoutes.ass5route: (context) => ass5(),
        MyRoutes.ass6route: (context) => ass6(),
        MyRoutes.ass7route: (context) => ass7(),
        MyRoutes.ass8route: (context) => ass8(),
        MyRoutes.loginroute: (context) => login(),

      },
    );
  }
}
