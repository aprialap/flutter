import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tambah() {
    setState(() {
      number++;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  void kurang() {
    setState(() {
      number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("StateFull Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.apps, color: Colors.red, size: 40.0),
                  Icon(Icons.android, color: Colors.green, size: 40.0),
                  Icon(Icons.camera_alt, color: Colors.yellow, size: 40.0),
                ],
              ),
              Text(
                number.toString(),
                style: TextStyle(color: Colors.black54, fontSize: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "reset",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: reset,
                    color: Colors.green,
                  ),
                  RaisedButton(
                    child: Text(
                      "kurang",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: kurang,
                    color: Colors.red,
                  ),
                  RaisedButton(
                    child: Text(
                      "tambah",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: tambah,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
