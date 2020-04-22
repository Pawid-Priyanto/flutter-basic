import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:  Screen1()
    )
  );
}
class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1", textDirection: TextDirection.ltr,),
        actions: <Widget>[ 
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: (){
             Navigator.pushNamed(context, '/screen2');
            }),       
        ],
      ),
    );
  }
}