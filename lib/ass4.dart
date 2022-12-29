// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:assignment/dr.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ass4 extends StatefulWidget {
  const ass4({super.key});

  @override
  State<ass4> createState() => _ass4State();
}

class _ass4State extends State<ass4> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  int? result1 = 0, n1, n2, n3, result2 = 0, result3 = 0, sum = 0;

  sum1() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      n3 = int.parse(t3.text);
      result1 = n1! * 4;
      result2 = n2! * 2;
      result3 = n3! * 4;
      sum = result1! + result2! + result3!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(" 4.  find the total pigs "),
      ),
      drawer: dr(),
      body: SingleChildScrollView(
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
                        "Result = $sum",
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
              controller: t1,
              decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Enter Number of cows "),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: t2,
              decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Enter Number of chikens "),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: t3,
              decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Enter Number of pigs"),
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
                sum1();
                t1.clear();
                t2.clear();
                t3.clear();
              },
              child: Text("Add"),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
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
                      Navigator.pushNamed(context, MyRoutes.ass3route);
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
                      Navigator.pushNamed(context, MyRoutes.ass5route);
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
