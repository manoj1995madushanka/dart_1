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
  Future _showAleart(BuildContext context, String message) async {
    return showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text(message),
          actions: [
            new FlatButton(
                onPressed: () => Navigator.pop(context), child: new Text("ok"))
          ],
        ));
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
                onPressed: () => _showAleart(context, "do you like flutter"),
                child: new Text("click"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
