import 'package:flutter/material.dart';

// snackbar is a on screen display that notifies user of an event


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
  final GlobalKey<ScaffoldState> _scaffoldState =
      new GlobalKey<ScaffoldState>();

  void _showSnack() {
    _scaffoldState.currentState
        .showSnackBar(new SnackBar(content: new Text("this is snackbar")));
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
              new Text("test"),
              new RaisedButton(
                onPressed: _showSnack,
                child: new Text("show"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
