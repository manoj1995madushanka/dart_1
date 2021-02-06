import 'package:flutter/material.dart';





//bottom sheet is a drawer that appears in the bottom


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
  void _showBottom() {
    showModalBottomSheet(context: context, builder: (BuildContext context) {
      return Container(
        padding: new EdgeInsets.all(32.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("some info here",style : new TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
            new RaisedButton(onPressed: ()=>Navigator.pop(context),child: new Text("close"),)
          ],
        ),
      );
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
            children: [new Text("test"),
            new RaisedButton(onPressed: _showBottom,child: new Text("show bottom sheet"),)],
          ),
        ),
      ),
    );
  }
}
