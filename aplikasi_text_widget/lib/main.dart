import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi text widget'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
            child: Container(
                color: Colors.teal,
                width: 200,
                height: 100,
                child: Text(
                  "saya sedang belajar material text widget flutter ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))),
      ),
    );
  }
}
