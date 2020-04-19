import 'dart:ui';

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
    return MaterialApp( 
      home: Padding(
      padding: EdgeInsets.only(top: 150.0, left: 70.0, right: 60.0),
      child: Column (
        mainAxisSize: MainAxisSize.min,
      children: <Widget>[
       Card( 
         child: Padding(
           padding: EdgeInsets.all(20.0),
         child: Row(
           textDirection: TextDirection.ltr,
           children: <Widget>[
             IconButton(
               icon: Icon(Icons.person, textDirection: TextDirection.ltr,),
               onPressed: (){
                 print("ini icon");
                }
               ),
               Expanded(
                 child: Text("Child 2", textDirection: TextDirection.ltr,)),
       
              IconButton(
               icon: Icon(Icons.person, textDirection: TextDirection.ltr,),
               onPressed: (){
                 print("ini icon");
                }
               ),
           ],
           )
          )
       ),
       Padding(
         padding: EdgeInsets.only(top: 8.0),
       child: Card( 
         child: Padding(
           padding: EdgeInsets.all(20.0),
         child: Row(
           textDirection: TextDirection.ltr,
           children: <Widget>[
             IconButton(
               icon: Icon(Icons.person, textDirection: TextDirection.ltr,),
               onPressed: (){
                 print("ini icon");
                }
               ),
             Expanded(
               child: Text("Child 2 2", textDirection: TextDirection.ltr, )),  
             
              IconButton(
               icon: Icon(Icons.person, textDirection: TextDirection.ltr,),
               onPressed: (){
                 print("ini icon");
                }
               ),
           ],
           )
          )
          )
       ),
       Image(
         image: AssetImage("images/hilda.png"),
         )
      ],
     )
    )
    );
  }
}