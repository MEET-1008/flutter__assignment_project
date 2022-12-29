// ignore_for_file: camel_case_types, prefer_const_constructors, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_typing_uninitialized_variables

import 'dart:core';

import 'package:assignment/dr.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ass3 extends StatefulWidget {
  const ass3({super.key});

  @override
  State<ass3> createState() => _ass3State();
}

class _ass3State extends State<ass3> {
  TextEditingController controller1 = TextEditingController();
  var result=0, num1=1;


  Factorial1(num) {
     num1 = int.parse(controller1.text);
    setState(() {
      if (num1 == 0) {
        result = 1;
      } else {
  // result = num1 * Factorial1(num1 - 1);
        result = num1 * 2;
      }
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: Text("3. Factorial"),
      ),
      drawer: dr(),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 70,
            width: 230,
            child: Card(
              elevation: 20,
              child: Center(
                child: Text(
                  '$result',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextFormField(
            controller: controller1,
            decoration: InputDecoration(
                hintText: "Enter Your Number 1 ",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Enter Number "),
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
              Factorial1(num1);
              controller1.clear();
            },
            child: Text("Factorial"),
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
                      Navigator.pushNamed(context, MyRoutes.ass2route);
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
                      Navigator.pushNamed(context, MyRoutes.ass4route);
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),),
        ],
      ),
    );
  }
}
