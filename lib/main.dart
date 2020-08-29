import 'package:flutter/material.dart';
import 'package:sawarudo/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Sawarudo!!';
    return MaterialApp(
      title: title,
      theme: ThemeData(fontFamily: 'BaiJamjuree-Regular'),
      home: HomePage(),
      );
  }
}
