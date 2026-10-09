import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Лабораторная работа'), 
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: List.generate(6, (index) {
          return Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(8.0),
            color: Colors.primaries[index % Colors.primaries.length],
            child: Center(
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 40,
              ),
            ),
          );
        }),
      ),
    );
  }
}