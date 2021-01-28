import 'package:flutter/material.dart';

//1
void main() {
  runApp(new MaterialApp(
    // set home screen
    home: new MyApp(),
  ));
}

//2
// state is just remembering what is going on
class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return new _State();
  }
}

//3
class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //BuildContext is which this method being run

    //scapfold contails our application
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Test App'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [new Text('this is body')],
          ),
        ),
      ),
    );
  }
}
