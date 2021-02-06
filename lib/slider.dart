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

  double _value = 0.0;

  void setValue(double value)=>setState(()=>{_value=value});

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
              new Text("value ${( _value * 100).round()}"),
              new Slider(value: _value, onChanged: setValue)
            ],
          ),
        ),
      ),
    );
  }

}