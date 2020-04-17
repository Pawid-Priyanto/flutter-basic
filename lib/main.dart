import 'package:flutter/material.dart';

void main() {
  runApp(
   MyStatelesswidget()
  );
}

class MyStatelesswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      child: Center(
        child: Text("Haloo from flutter", textDirection: TextDirection.ltr, style: TextStyle(fontSize:32.0, color: Colors.white))
      ) // center
    ); // container
  }
}