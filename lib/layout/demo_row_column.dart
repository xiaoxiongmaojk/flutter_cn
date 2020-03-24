import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        // body: Center(child: buildRow()),
        body: Center(child: buildColumn()),
      ),
    );
  }

  Widget buildRow() => Row(
        // #docregin Row
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('images/row_column/pic1.jpg'),
          Image.asset('images/row_column/pic2.jpg'),
          Image.asset('images/row_column/pic3.jpg'),
        ],
      );
  // #enddocregion Row

  Widget buildColumn() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('images/row_column/pic1.jpg'),
          Image.asset('images/row_column/pic2.jpg'),
          Image.asset('images/row_column/pic3.jpg'),
        ],
      );
}
