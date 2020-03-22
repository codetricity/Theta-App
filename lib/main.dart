import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("THETA App"),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  RaisedButton(
                    color: Colors.red,
                    child: Text("Info"),
                    onPressed: () {},
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}

