import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("hello"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [
              new Text("card example"),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(25.0),
                  child: new Column(
                    children: [new Text("text 1"), new Text("text 2")],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
