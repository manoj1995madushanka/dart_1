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
  int value1 = 0;
  int value2 = 0;

  void setValue1(int value) => setState(() => value1 = value);

  void setValue2(int value) => setState(() => value2 = value);

  Widget makeRadios() {
    List<Widget> radios = new List<Widget>();

    for (int i = 0; i < 3; i++) {
      radios.add(new Radio(value: i, groupValue: value1, onChanged: setValue1));
    }

    Column column = new Column(children: radios);
    return column;
  }

  Widget makeRadioTiles() {
    List<Widget> radios = new List<Widget>();

    for (int i = 0; i < 3; i++) {
      radios.add(new RadioListTile(
        value: i,
        groupValue: value2,
        onChanged: setValue2,
        title: new Text('Item ${1}'),
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
      ));
    }

    Column column = new Column(children: radios);
    return column;
  }

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
              makeRadios(),
              makeRadioTiles(),
            ],
          ),
        ),
      ),
    );
  }
}
