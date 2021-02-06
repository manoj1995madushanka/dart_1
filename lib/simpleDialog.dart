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

enum Answers { YES, NO, MAYBE }

class _State extends State<MyApp> {
  String _value = "";

  void setValue(String val) => setState(() => {_value = val});

  Future askUser() async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text("do you like flutter?"),
          children: [
            new SimpleDialogOption(
              child: new Text("Yes"),
              onPressed: () => {Navigator.pop(context, Answers.YES)},
            ),
            new SimpleDialogOption(
              child: new Text("No"),
              onPressed: () => {Navigator.pop(context, Answers.NO)},
            ),
            new SimpleDialogOption(
              child: new Text("May be"),
              onPressed: () => {Navigator.pop(context, Answers.MAYBE)},
            )
          ],
        ))) {
      case Answers.YES:
        setValue("Yes");
        break;
      case Answers.NO:
        setValue("No");
        break;
      case Answers.MAYBE:
        setValue("May Be");
        break;
    }
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
              new Text(_value),
              new RaisedButton(
                onPressed: askUser,
                child: new Text("dialog"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
