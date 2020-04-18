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
       Card( 
         child: Padding(
           padding: EdgeInsets.all(25.0),
         child: Row(
           textDirection: TextDirection.ltr,
           children: <Widget>[
             Text("Child 1", textDirection: TextDirection.ltr, ),
             Text("Child 2", textDirection: TextDirection.ltr, ),
             Text("Child 3", textDirection: TextDirection.ltr, ),
           ],
           )
          )
       ),
       Padding(
         padding: EdgeInsets.only(top: 0.0),
       child: Card( 
         child: Padding(
           padding: EdgeInsets.all(25.0),
         child: Row(
           textDirection: TextDirection.ltr,
           children: <Widget>[
             Text("Child 2 1", textDirection: TextDirection.ltr, ),
             Text("Child 2 2", textDirection: TextDirection.ltr, ),
             Text("Child 2 3", textDirection: TextDirection.ltr, ),
           ],
           )
          )
          )
       )
      ],
     )
    );
  }
}