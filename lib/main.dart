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
    return Column (
      children: <Widget>[
        Text("Column 1", textDirection: TextDirection.ltr),
        Text("Column 2", textDirection: TextDirection.ltr),
        Text("Column 3", textDirection: TextDirection.ltr),
        Row(
          textDirection: TextDirection.ltr,
          children: <Widget>[
           Text("Row 1", textDirection: TextDirection.ltr),
           Text("Row 2", textDirection: TextDirection.ltr),
           Text("Row 3", textDirection: TextDirection.ltr),
            ],
           )
      ],
    );
  }
}