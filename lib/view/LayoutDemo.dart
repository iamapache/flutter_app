import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new LayoutDemo()));
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("水平方向布局"),
      ),

      //布局方向  Row:水平布局 Column：垂直布局
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          new Expanded(
            child: new RaisedButton(
              onPressed: () {
                print('点击红色按钮');
              },
              color: const Color(0xffff0000),
              child: new Text('红色按钮xxxx'),
            ),
          ),
          new Expanded(
            flex: 2,
            child: new RaisedButton(
              onPressed: () {
                print("点击蓝色按钮");
              },
              color: const Color(0xff000099),
              child: new Text('蓝色按钮'),
            ),
          ),
          new Expanded(
            flex: 2,
            child: new RaisedButton(
              onPressed: () {
                print("点击粉色按钮");
              },
              color: const Color(0xffee9999),
              child: new Text('粉色按钮'),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
