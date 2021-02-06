import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

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
  Map countries = new Map();

  void getData() async {
    var url = 'http://country.io/names.json';
    var response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        countries = jsonDecode(response.body);
        print("there are ${countries.length} countries.");
      });
    }
  }

  @override
  void initState() {
    getData();
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
              new Text(
                "Countries",
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              new Expanded(
                  child: new ListView.builder(
                      itemCount: countries.length,
                      itemBuilder: (BuildContext context, int index) {
                        String key = countries.keys.elementAt(index);
                        return new Row(
                          children: [
                            new Text("${key} : "),
                            new Expanded(child: new Text(countries[key]))
                          ],
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
