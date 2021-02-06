import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  bool value1 = false;
  bool value2 = false;

  void onChange1(bool value) => setState(() => {value1 = value});

  void onChange2(bool value) => setState(() => {value2 = value});

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
              new Switch(value: value1, onChanged: onChange1),
              new SwitchListTile(
                value: value2,
                onChanged: onChange2,
                title: new Text(
                  'title',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              )
            ],
          ),
        ),
      ),
    );
  }
}
