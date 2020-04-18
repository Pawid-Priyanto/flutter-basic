import 'package:flutter/material.dart';

void main() {
  runApp(
   MyStatefullWidget()
  );
}
class MyStatefullWidget extends StatefulWidget {
  @override
  _MyStatefullWidgetState createState() => _MyStatefullWidgetState();
}

class _MyStatefullWidgetState extends State<MyStatefullWidget> {

 
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 150.0, left: 70.0, right: 60.0),
      child: Column (
      children: <Widget>[
        Text("Column 1", textDirection: TextDirection.ltr),
        Text("Column 2", textDirection: TextDirection.ltr),
        Text("Column 3", textDirection: TextDirection.ltr),
        Padding(
          padding: EdgeInsets.only(top: 300, right: 60, left: 70.0,),
       child: Row(
          textDirection: TextDirection.ltr,
          children: <Widget>[
           Text("Row 1", textDirection: TextDirection.ltr),
           Text("Row 2", textDirection: TextDirection.ltr),
           Text("Row 3", textDirection: TextDirection.ltr),
            ],
           )
           )
      ],
     )
    );
  }
}