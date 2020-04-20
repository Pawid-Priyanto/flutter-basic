import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyStatefullWidget(),
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.lime,
        brightness: Brightness.dark,
      ),
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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(
                  image: AssetImage("images/inlove.JPG"),
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 16.0),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(
                      "images/me.JPG"
                    )
                  ),
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0, left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("First Time", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.white)),
                      Text("My Flutter Tutorial", style: TextStyle(color: Colors.white)),  
                    ]
                  )
                  )  
              ]
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.add_circle),
                  title: Text("Tutorial Flutter"),
                  onTap: (){

                  },
                )
              ],
            ),
             ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.add_circle),
                  title: Text("Tutorial React Native"),
                  onTap: (){

                  },
                )
              ],
            ),
             ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.add_circle),
                  title: Text("Tutorial React JS"),
                  onTap: (){

                  },
                )
              ],
            ),
             ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.add_circle),
                  title: Text("Tutorial Kotlin"),
                  onTap: (){

                  },
                )
              ],
            )      
          ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:() {
          print("ini floating button");
          }
          ),
          body: Column(
            children: <Widget>[
             Padding(
               padding: EdgeInsets.all(16.0),
               child: TextField(
                 decoration:  InputDecoration(
                   icon: Icon(Icons.person),
                   hintText: "Username"
                 ),
                 onChanged: (input){
                   print(input);
                 },
               ),
               
               ),
            ]
          ),
    );
  }
}