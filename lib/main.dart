import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:  MyStatefullWidget()
    )
  );
}
class MyStatefullWidget extends StatefulWidget {
  @override
  _MyStatefullWidgetState createState() => _MyStatefullWidgetState();
}

class _MyStatefullWidgetState extends State<MyStatefullWidget> {

 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Begginer", textDirection: TextDirection.ltr,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: (){
              print("This is icon");
            }),
          IconButton(
              icon: Icon(Icons.add_circle),
              onPressed: (){
                print("This is icon");
              })    
        ],
      ),
    );
  }
}