// main.dart
import 'package:flutter/material.dart';

import 'page/ArticleListScreen.dart';
import 'page/Home.dart';
import 'page/HomeNavigator.dart';
import 'page/profile.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demos',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => new Home(),
//        '/login': (BuildContext context) => new ArticleListScreen()
      },
    );
  }
}
