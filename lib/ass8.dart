// ignore_for_file: camel_case_types, must_be_immutable, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:assignment/dr.dart';
import 'package:flutter/material.dart';

import 'main.dart';


class ass8 extends StatefulWidget {
   ass8({super.key});


  @override
  State<ass8> createState() => _ass8State();
}

class _ass8State extends State<ass8> {

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  var n1 , n2 , result;

  area  (){
    setState(() {
      n1=int.parse(controller1.text);
      n2=int.parse(controller2.text);

        result = 1/2*(n1*n2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
      
        title: Text(
          " 8.  Triangle area"
        ),
      ),
      drawer: dr(),
      body: Builder(
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [
          SizedBox(height: 70,),
          
                 SizedBox(
                        height: 70,
                        width: 230,
                        child: Card(
                          elevation: 20,
                          child: Center(
                            child: Text(
                              "$result",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
          SizedBox(
                        height: 120,
                        width: 230,),
                 TextFormField(
                  controller: controller1,
                  decoration: InputDecoration(
                      hintText: "Enter Your Number 1 ",
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: "Enter Number "),
                ),
          
                SizedBox(
                        height: 20,
                        width: 230,),
                 TextFormField(
                  controller: controller2,
                  decoration: InputDecoration(
                      hintText: "Enter Your Number 1 ",
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: "Enter Number "),
                ),
                SizedBox(height: 50,),
          
                 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      area();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: Text("Add"),
                  ),
                        SizedBox(height: 100,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.ass7route);
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
                          Navigator.pushNamed(context, MyRoutes.ass1route);
                        },
                        child: Text("Next"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}