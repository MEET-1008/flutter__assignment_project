// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types, prefer_typing_uninitialized_variables

import 'package:assignment/dr.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ass5 extends StatefulWidget {
  const ass5({super.key});

  @override
  State<ass5> createState() => _ass5State();
}

class _ass5State extends State<ass5> {
  int result = 0, num1 = 0, num2 = 0;
  var result1;

  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1 + num2;
      if (result < 100){
        result1 = true;
      }
      else{
        result1 = false;
      }
    });
  }

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
      
        title: Text(
          "5.  True/False"
        ),
      ),
      drawer: dr(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
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
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Number 1 "),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: controller2,
              decoration: InputDecoration(
                  hintText: "Enter Your Number 2 ",
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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

               Expanded(
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.ass4route);
                  },
                  child: Text("previous"),
                ),
               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   minimumSize: Size(150, 50),
                   backgroundColor: Colors.green,
                 ),
                 onPressed: () {
                   Navigator.pushNamed(context, MyRoutes.ass6route);
                 },
                 child: Text("Next"),
               ),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
