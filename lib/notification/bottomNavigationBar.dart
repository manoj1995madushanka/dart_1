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
  List<BottomNavigationBarItem> _items;
  String _value = "";
  int index = 0;

  @override
  void initState() {
    _items = new List();
    _items.add(new BottomNavigationBarItem(
        icon: new Icon(Icons.person), label: "people"));
    _items.add(new BottomNavigationBarItem(
        icon: new Icon(Icons.pregnant_woman), label: "woman"));
    _items.add(new BottomNavigationBarItem(
        icon: new Icon(Icons.pool), label: "pool"));
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
              children: [new Text(_value)],
            ),
          ),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          items: _items,
          //backgroundColor: Colors.grey,
          fixedColor: Colors.green,
          currentIndex: index,
          onTap: (int itm) {
            setState(() {
              index = itm;
              _value = "current value is ${index.toString()}";
            });
          },
        ));
  }
}
