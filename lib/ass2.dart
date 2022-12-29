// ignore_for_file: camel_case_types, implementation_imports, override_on_non_overriding_member, avoid_unnecessary_containers, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:assignment/dr.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ass2 extends StatefulWidget {
  const ass2({super.key});

  @override
  State<ass2> createState() => _ass2State();
}

class _ass2State extends State<ass2> {

  var m= 0, s=0, minut ,sec , result=0;

m2s(){
  setState(() {
    minut = int.parse(text1.text);
  result = (minut*60); 
  });
  
}


  TextEditingController text1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("2. minute to sec."),
      ),
      drawer: dr(),
      body: Column(

   children: [
        SizedBox(height: 200,),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      controller: text1,
                      decoration: InputDecoration(
                          hintText: "Enter minute",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "minute"),
                    ),
                  ),
                ),
              ),

               Expanded(
                 child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                  child :SizedBox(
                  height: 70,
                  width: 230,
                  child: Card(
                    elevation: 20,
                    child: Center(
                      child: Text(
                         "$result",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50),
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
               m2s();
                text1.clear();
              },
              child: Text("convert"),
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
                      Navigator.pushNamed(context, MyRoutes.ass1route);
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
                      Navigator.pushNamed(context, MyRoutes.ass3route);
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
),
        ],
      ),
    );
  }
}
