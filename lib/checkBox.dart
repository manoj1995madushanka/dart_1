import 'package:flutter/material.dart';

void main()
{
  return runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _State();
  }

}

class _State extends State{

  bool value1 = false;
  bool value2 = false;

  void value1Changed(bool value)
  {
    setState(() {
      value1 = value;
    });
  }

  void value2Changed(bool value)
  {
    setState(() {
      value2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("appTitle")
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [
              new Checkbox(value: value1, onChanged: value1Changed),
              new CheckboxListTile(value: value2, onChanged: value2Changed,
                title: new Text("checkBox2Title"),
                subtitle: new Text("checkBox2SubTitle"),
                secondary: new Icon(Icons.archive),
                activeColor: Colors.red,
                controlAffinity: ListTileControlAffinity.leading,
              )
            ],
          ),
        ),
      ),
    );
  }

}