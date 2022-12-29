// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, unnecessary_string_interpolations, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';



Widget rowcrt(BuildContext context,String text1, String str) {
    return GestureDetector(
          onTap: () {
   Navigator.pushNamed(context, '/${str}' );
          },
      child: Expanded(
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 60,
            child: Card(
              elevation: 10,
              child: Row(
                children: [
                  Icon(Icons.arrow_right),
                     Text(
                      "$text1"
                      
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }



class dr extends StatefulWidget {
  const dr({super.key});

  @override
  State<dr> createState() => _drState();
}

class _drState extends State<dr> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: Column(
          children: [
            SizedBox( height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("MEET VAGHAISIYA",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
                ),),
              ],
            ),
                        SizedBox( height: 20,),

            rowcrt(context,'ass1','ass1'),
            SizedBox( height: 10,),
            rowcrt(context,'ass2','ass2'),
          SizedBox( height: 10,),
          rowcrt(context,'ass3','ass3'),
          SizedBox( height: 10,),
          rowcrt(context,'ass4','ass4'),
          SizedBox( height: 10,),
          rowcrt(context,'ass5','ass5'),
          SizedBox( height: 10,),
          rowcrt(context,'ass6','ass6'),
          SizedBox( height: 10,),
           rowcrt(context,'ass7','ass7'),
          SizedBox( height: 10,),
           rowcrt(context,'ass8','ass8'),
          SizedBox( height: 10,),
          
          ],
        ),
      );
  }
}