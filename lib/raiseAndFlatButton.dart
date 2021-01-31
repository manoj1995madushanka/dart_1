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
  String _body = "this is body";

  void _onPressed({String param}) {
    setState(() {
      if (param == "button with parameter") {
        _body = param;
      } else {
        _body = "button clicked";
      }
    });
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
              new Text(_body),
              new RaisedButton(
                  onPressed:()=> _onPressed( param:"button without parameter"), child: new Text("click me")),
              new RaisedButton(
                onPressed: () => _onPressed(param:"button with parameter"),
                child: new Text("button with param"),),
              new FlatButton(
                onPressed: () => _onPressed(param:"button with parameter"),
                child: new Text("FlatButton"),)
            ],
          ),
        ),
      ),
    );
  }

}