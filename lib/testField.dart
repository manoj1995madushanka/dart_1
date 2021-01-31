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

  String _text ='';

  void _onChange(String value)
  {
    setState(() =>{
      print(_text),
      _text = 'onChange: ${value}'
    });
  }

  void _onSave(String value)
  {
    setState(() {
      _text = 'submitted: ${value}';
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
              new Text("test"),
              new Text(_text),
              new TextField(
                decoration: new InputDecoration(
                  labelText: "labelText",
                  hintText: "hintText",
                  icon: new Icon(Icons.person)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSave,
              )
            ],
          ),
        ),
      ),
    );
  }

}