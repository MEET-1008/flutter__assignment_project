// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("welcome",
              style: TextStyle(
                fontSize: 60
              ),),

            ],
          ),
        ],
      ),
    );
  }
}