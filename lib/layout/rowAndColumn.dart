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
  TextEditingController _userName = new TextEditingController();
  TextEditingController _password = new TextEditingController();

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
              new Text("Please login..."),
              new Row(
                children: [
                  new Text("enter username : "),
                  new Expanded(
                      child: new TextField(
                    controller: _userName,
                  ))
                ],
              ),
              new Row(
                children: [
                  new Text("enter password : "),
                  new Expanded(
                      child: new TextField(
                    controller: _password,
                    obscureText: true,
                  ))
                ],
              ),
              new Padding(
                  padding: new EdgeInsets.all(32.0),
                  child: new RaisedButton(
                    onPressed: () => print("username : ${_userName.text}"),
                    child: new Text("submit"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
