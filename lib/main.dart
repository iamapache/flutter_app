import 'package:flutter/material.dart';
import 'package:flutter_app/page/StaticNavigatorPage.dart';


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
          backgroundColor: Colors.blue),
      routes: <String, WidgetBuilder>{
        'router/new_page': (_) => StaticNavigatorPage()
      },
      home: FlutterDemo(),
    );
  }
}

class FlutterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter进阶之旅"),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        //_代表参数为空
                        builder: (context) => new StaticNavigatorPage(
                              username: "xiedong",
                              password: "123456",
                            ))).then((value) {
                  showDialog(
                      context: context,
                      child: new AlertDialog(
                        content: new Text(value),
                      ));
                });
              },
              child: Text('dong态路由跳页'),
            ),
            RaisedButton(
              onPressed: () async {
//                Navigator.pushNamed(context, 'router/new_page', arguments: "sb")
//                    .then((value) {
//                  showDialog(
//                      context: context,
//                      child: new AlertDialog(
//                        content: new Text(value),
//                      ));
//                }); //这里一定要保证跳页的路由路径跟上面注册的路径一致

                var result = await Navigator.pushNamed(
                    context, 'router/new_page',
                    arguments: "sb");
                print(result);
              },
              child: Text('静态路由跳页'),
            ),
          ],
        ),
      ),
    );
  }
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,
      appBar: new AppBar(
        leading: GestureDetector(
            child: Icon(Icons.print),
            onTap: () {
              Navigator.of(context).pop();
            }),
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
