import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyHome(),
    theme: new ThemeData(
      primarySwatch: Colors.deepOrange,
      accentColor: Colors.lightBlueAccent
      ,
      backgroundColor: Colors.pink
    ),
  ),
  );
}


class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("new app for theme"),
      ),
      
      );
    
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}