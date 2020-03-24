import 'package:flutter/material.dart';
import 'package:thetaapp/get_info.dart';
import 'package:thetaapp/get_metadata.dart';
import 'package:thetaapp/post_state.dart';
import 'package:thetaapp/take_picture.dart';
import 'package:thetaapp/list_files.dart';
import 'package:thetaapp/get_options.dart';
import 'package:thetaapp/get_last_image_url.dart';

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

          children: <Widget>[
            Image(image: AssetImage("doc/museum.jpg")),
            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton.extended(
                  backgroundColor: Color(0xffa4d4ae),
                  label: Text("listFiles"),
                  onPressed: () {
                    print('list files');
                    listFiles();
                  },
                ),
                FloatingActionButton.extended(
                  backgroundColor: Color(0xffa4d4ae),
                  label: Text("getOptions"),
                  onPressed: () {
                    print('get options');
                    getOptions();
                  },
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
                  onPressed: () {
                    getLastImageUrl().then((url) {
                      getMetadata(url);
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton.extended(
                  backgroundColor: Color(0xffe7f0c3),
                  label: Text("Info", style: TextStyle(color: Colors.blueGrey[200])),
                  onPressed: () {
                    print("get info");
                    getInfo();
                  },
                ),
                FloatingActionButton.extended(
                  backgroundColor: Color(0xffe7f0c3),
                  label: Text("State", style: TextStyle(color: Colors.blueGrey[200])),
                  onPressed: () {
                    print('show camera state');
                    postState();
                  },
                ),
                FloatingActionButton.extended(
                  backgroundColor: Color(0xffe7f0c3),
                  label: Text("takePicture", style: TextStyle(color: Colors.blueGrey[200])),
                  onPressed: () {
                    print('take picture');
                    takePicture();
                  },
                ),
              ],
            ),
               SizedBox(height: 50),

               RichText(
                 text: TextSpan(
                   text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                       ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                       'Porta lorem mollis aliquam ut porttitor leo. In nisl nisi scelerisque eu ultrices vitae auctor eu. '
                       'In cursus turpis massa tincidunt dui ut ornare lectus sit.',
                   style: TextStyle(color: Color(0xff32afa9))
                 ),

            )
          ],
        )),
      ),
    );
  }
}
