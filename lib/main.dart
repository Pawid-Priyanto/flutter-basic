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

  var myColor = Colors.blue;
  
  changeColor(){
    setState(() {
      myColor = Colors.green;
    });
    print(myColor);
    
    print(myColor);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Container(
      color: myColor,
      child: Center(
        child: RaisedButton(
          child: Text("Click", textDirection: TextDirection.ltr),
          onPressed: (){
            print("Hi from mystatefullwidget");
            changeColor();
          },
         ),
        ),
        ),
    );
  }
}