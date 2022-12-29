// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types

import 'package:flutter/material.dart';

class sum extends StatefulWidget {
  const sum({super.key});

  @override
  State<sum> createState() => _sumState();
}

class _sumState extends State<sum> {
  int? result = 0, num1 = 0, num2 = 0;

  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2!;
    });
  }

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                        "Result = $result",
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
          ],
        ),
      ),
    );
  }
}
