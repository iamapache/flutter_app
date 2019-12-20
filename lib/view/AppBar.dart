import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final Widget title;
  final num test;

  /**
   * 两者的区别在于
   * 第一种必须传参
   * 第二种可选 看我的实现即可
   */
//  MyAppBar(this.title);
  MyAppBar({this.title, this.test});

  @override
  Widget build(BuildContext context) {
    //创建Container容器
    return new Container(
        height: 56.0, //高度为56像素(并非真实的像素 类似于浏览器中的像素)
        padding: const EdgeInsets.symmetric(horizontal: 8.0), //左侧和右侧均有8像素填充
        decoration: new BoxDecoration(color: Colors.blue[500]),
        //Row 水平方向的线性布局 children 所有子widget按水平方向排列
        child: new Row(children: <Widget>[
          //水平布局
          new IconButton(
            //onPressed：null会禁用Button
              icon: new Icon(Icons.menu),
              tooltip: "导航菜单",
              onPressed: null),
          new Expanded(child: title),
          //被标记为Expanded的widget 这意味着他会填充尚未被其他widget占用的剩余可用空间
          new IconButton(
              icon: new Icon(Icons.search), tooltip: "搜索", onPressed: null)
        ]));
  }
}

class MyScaffold2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      //Column 垂直方向的线性布局
      child: new Column(
        //children类型为widget 所有子widget以垂直方向排列
        children: <Widget>[
          //在Column的顶部将MyAppBar传入, 将widget作为参数传递给其他widget 是比较常用的一种技术 可以创建各种复杂的widget
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          //使用所有剩余空间 Center：居中显示
          new Expanded(
              child: new Center(
                child: new Text("hello flutter"),
              ))
        ],
      ),
    );
  }
}