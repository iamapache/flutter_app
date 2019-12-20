import 'package:flutter/material.dart';
import 'package:flutter_app/view/AppBar.dart';
import 'package:flutter_app/view/CustApp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        backgroundColor: Colors.blue
      ),
      home: CustApp(),
    );
  }
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        leading: new IconButton(
            //Icons是一个包含多个可用图标的列表
            icon: new Icon(Icons.menu),
            tooltip: "导航菜单",
            onPressed: null),
        title: new Text("京西商城"),
        //在标题之后显示的组件 注意是数组形式 可以有多个widget
        actions: <Widget>[
          new IconButton(
              //icon：在按钮中显示的图标
              icon: new Icon(Icons.shopping_cart),
              //tooltip:提示信息，当用户长按按钮时将显示此文本
              tooltip: "open shopping cart",
              //点击该按钮时的回调  类似于Andorid的onClick 如果设置为null将禁用该按钮(不妨碍tooltip)
              onPressed: openCart)
        ],
      ),
      body: Row(
        children: <Widget>[Text("sss")],
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: "增加",
        child: new Icon(Icons.add),
        onPressed: null,
        backgroundColor: Colors.pink,
      ),
    );
  }

  void openCart() {
    print("open shopping cart");
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          Text('Hello, world!', textDirection: TextDirection.rtl),
        ],
      ),
    );
  }
}
