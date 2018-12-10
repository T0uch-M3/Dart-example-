import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  MyAppState createState(){
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  int counter  = 0;
  List<String> strings = ['Test1', 'Test2', 'Test3', 'Test4'];
  String displayedString = "Hello World!";

  void onPressOfButton(){
    setState((){
      displayedString = strings[counter];
      counter = counter <4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful Widget"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(displayedString, style:  new TextStyle(fontSize:  40.0)),
            new Padding(padding: new EdgeInsets.all(10.0)),
            new RaisedButton(
              child: new Text(
                "Press me",
              style: new TextStyle(color: Colors.white),
            ),
        color: Colors.red,
        onPressed: onPressOfButton,
            )
          ],
        ),
      ),
    );
  }


}