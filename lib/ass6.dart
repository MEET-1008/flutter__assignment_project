// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types, prefer_typing_uninitialized_variables, curly_braces_in_flow_control_structures

import 'package:assignment/dr.dart';
import 'package:assignment/sum.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ass6 extends StatefulWidget {
  const ass6({super.key});

  @override
  State<ass6> createState() => _ass6State();
}

class _ass6State extends State<ass6> {
  int sum = 0, num1 = 0, num2 = 0;
  var result1;

  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      sum = num1 + num2;
      if (sum < 10)
        result1 = true;
      else if (num1 == 10)
        result1 = true;
      else if (num2 == 10)
        result1 = true;
      else
        result1 = false;
    });
  }

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("6.  True/False"),
      ),
      drawer: dr(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 230,
                    child: Card(
                      elevation: 20,
                      child: Center(
                        child: Text(
                          "$result1",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: controller1,
                decoration: InputDecoration(
                    hintText: "Enter Your Number 1 ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Number 1 "),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: controller2,
                decoration: InputDecoration(
                    hintText: "Enter Your Number 2 ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Number 2 "),
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
                  add();
                  controller1.clear();
                  controller2.clear();
                },
                child: Text("Add"),
              ),


              SizedBox(height: 140,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.ass5route);
                    },
                    child: Text("previous"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.ass7route);
                    },
                    child: Text("Next"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
