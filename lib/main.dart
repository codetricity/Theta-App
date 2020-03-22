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
          backgroundColor: Color(0xfff0cf85),
        ),
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(image: AssetImage("doc/museum.jpg")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton.extended(
                  backgroundColor: Color(0xffa4d4ae),
                  label: Text("listFiles"),
                  onPressed: () {},
                ),
                FloatingActionButton.extended(
                  backgroundColor: Color(0xffa4d4ae),
                  label: Text("getOptions"),
                  onPressed: () {},
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton.extended(
                  backgroundColor: Color(0xff32afa9),
                  label: Text("downloadFile"),
                  onPressed: () {},
                ),
                FloatingActionButton.extended(
                  backgroundColor: Color(0xff32afa9),
                  label: Text("getMetadata"),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton.extended(
                  backgroundColor: Color(0xffe7f0c3),
                  label: Text("Info", style: TextStyle(color: Colors.blueGrey[200])),
                  onPressed: () {},
                ),
                FloatingActionButton.extended(
                  backgroundColor: Color(0xffe7f0c3),
                  label: Text("State", style: TextStyle(color: Colors.blueGrey[200])),
                  onPressed: () {},
                ),
                FloatingActionButton.extended(
                  backgroundColor: Color(0xffe7f0c3),
                  label: Text("takePicture", style: TextStyle(color: Colors.blueGrey[200])),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
