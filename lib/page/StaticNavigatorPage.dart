import 'package:flutter/material.dart';

class StaticNavigatorPage extends StatelessWidget {
  var username;
  var password;

  StaticNavigatorPage({Key key, this.username, this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = ModalRoute.of(context).settings.arguments;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("静态路由页"),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop( "页面结束后返回的数据");
        },
        child: new Text("返回"),
      ),
      body: new Column(
        children: <Widget>[
          new MaterialButton(
            onPressed: () {
              Navigator.pop(context, "未查询到改该用户信息");
            },
            child: new Text("点我返回"),
            color: Colors.lightGreen,
          ),
          new Text("上页传递过来的username   $text"),
          new Text("上页传递过来的username   $username"),
          new Text("上页传递过来的password   $password"),
        ],
      ),
    );
  }
}
