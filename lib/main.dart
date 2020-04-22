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
  String input = "";
  List list = List();
  
  @override
  void initState(){
    super.initState();
    list.add("num 1");
    list.add("num 2");
    list.add("num 3");
    list.add("num 4");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos", textDirection: TextDirection.ltr,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              print("This is icon");
            }),  
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:() {
          showDialog(
            context: context,
            builder: (BuildContext context){
              return  AlertDialog(
                title: Text("Add todo"),
                content: TextField(
                  onChanged: (String value){
                    input = value;
                  },
                ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Add"),
                      onPressed: (){
                        setState(() {
                          list.add(input);
                        });
                     Navigator.of(context).pop();

                      }

                      ),
                  ],
              );
              },
            );
          }
          ),
          body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index){
              return Dismissible(
               key: Key(list[index]),
               child: ListTile(
                 title: Text(list[index])
               ),
               onDismissed: (direction){
                 setState(() {
                   list.removeAt(index);
                 });
               },
             );
            },
          )
    );
  }
}