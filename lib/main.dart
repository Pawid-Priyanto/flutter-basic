import 'dart:ui';
import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

void main() {
  runApp(
    new MaterialApp(
    debugShowCheckedModeBanner: false,  
      home:  new MyStatefullWidget(),
      routes: <String, WidgetBuilder>{
        '/screen1' : (BuildContext context) =>  new Screen1(),
        '/screen2' : (BuildContext context) =>  new Screen2(),
      },
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
        title: Text("Flutter Routing", textDirection: TextDirection.ltr,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: (){
              Navigator.pushNamed(context, '/screen1');
              // print("will goes to screen 1");
            }),    
        ],
      ),
    );
  }
}