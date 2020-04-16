import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      color: Colors.blue,
      child: Text("Haloo from flutter", textDirection: TextDirection.ltr, style: TextStyle(fontSize:32.0, color: Colors.white))
    ) // container
  );
}