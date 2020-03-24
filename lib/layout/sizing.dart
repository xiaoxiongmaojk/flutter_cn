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
        body: Center(child: buildExpandedImages()),
      ),
    );
  }

  Widget buildOverflowingRow() =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset('images/sizing/pic1.jpg'),
        Image.asset('images/sizing/pic2.jpg'),
        Image.asset('images/sizing/pic3.jpg'),
      ]);

  Widget buildExpandedImages() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('images/sizing/pic1.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/sizing/pic2.jpg'),
          ),
          Expanded(
            flex: 3,
            child: Image.asset('images/sizing/pic3.jpg'),
          ),
        ],
      );
}
