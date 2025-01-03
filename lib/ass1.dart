// ignore_for_file: camel_case_types, implementation_imports, must_be_immutable, prefer_const_constructors, override_on_non_overriding_member, prefer_typing_uninitialized_variables, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:assignment/dr.dart';
import 'package:assignment/main.dart';
import 'package:flutter/material.dart';

class ass1 extends StatefulWidget {
  const ass1({super.key});

  @override
  State<ass1> createState() => _ass1State();
}

class _ass1State extends State<ass1> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();

  var num1, num2, result;
  var Aname = 'meet@gmail.com', Apassword = '123456';

  same() {
    setState(() {
      num1 = text1.text;
      num2 = text2.text;
      if (num1 == Aname && num2 == Apassword) {
        Navigator.pushNamed((context), MyRoutes.loginroute);
      } else {
        const snackmes = SnackBar(
          content: Text('Your Email and Password not match.....'),
          backgroundColor: Colors.red,
          elevation: 20,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackmes);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("1.login"),
      ),
      drawer: dr(),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(32.0),
            child: TextFormField(
              controller: text1,
              decoration: InputDecoration(
                  hintText: "meet@gmail.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: TextFormField(
              controller: text2,
              decoration: InputDecoration(
                  hintText: "123456",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Password"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(150, 50),
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              same();
              text1.clear();
              text2.clear();
            },
            child: Text("Add"),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                    },
                    child: Text("previous"),
                  ),
                ),
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.ass2route);
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
