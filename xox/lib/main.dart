import 'package:flutter/material.dart';
import 'package:xox/Layout.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: Column(children: [
           Padding(padding: EdgeInsets.all(30)),
            Layout(),
            Padding(padding: EdgeInsets.all(60)),
            Text("TIC TAC TOE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
            Text("Have Some Fun",style: TextStyle(color: Colors.white),),
            
          ])),
    ),
  );
}
