import 'package:flutter/material.dart';

void main() {
  runApp(NgeList());
}

class NgeList extends StatelessWidget {
  List<Widget> listWarna = [
    Container(
      width: 300,
      height: 300,
      color: Colors.amber,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.black,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.green,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.blue,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.red,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "List View",
            style: TextStyle(fontFamily: 'revans'),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(0.3)),
            Container(
              padding: EdgeInsets.all(3),
              child: Text(
                "v INI LIST VIEW HORIZONTAL v",
                style: TextStyle(fontFamily: 'revans', color: Colors.white),
                textAlign: TextAlign.center,
              ),
              color: Colors.black,
              width: 500,
            ),
            Padding(padding: EdgeInsets.all(0.3)),
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: listWarna,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(0.3)),
            Container(
              padding: EdgeInsets.all(3),
              child: Text(
                "v INI LIST VIEW VERTICAL v",
                style: TextStyle(fontFamily: 'revans', color: Colors.white),
                textAlign: TextAlign.center,
              ),
              color: Colors.black,
              width: 500,
            ),
            Padding(padding: EdgeInsets.all(0.3)),
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: listWarna,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
