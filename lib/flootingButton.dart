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
  String value = '';

  void setValue() => setState(() => {value = DateTime.now().toString()});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("floating button"),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: setValue,
        backgroundColor: Colors.green,
        child: new Icon(Icons.person),
        mini: true,
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [new Text(value)],
          ),
        ),
      ),
    );
  }
}
