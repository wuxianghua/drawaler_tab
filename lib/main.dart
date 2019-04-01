import 'package:flutter/material.dart';
import 'package:tab_drawable/page/BookPage.dart';
import 'package:tab_drawable/page/FilmPage.dart';
import 'package:tab_drawable/page/HomeDrawer.dart';
import 'package:tab_drawable/page/MyPage.dart';
import 'package:tab_drawable/style/Style.dart';
import 'package:tab_drawable/widget/TabBarWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "电影App",
      theme: ThemeData(primarySwatch:AppColors.primarySwatch,),
      home: new HomePage(),
    );
  }

}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      _renderTab(new Text("电影")),
      _renderTab(new Text("图书")),
      _renderTab(new Text("我的"))
    ];
    return new WillPopScope(
      child: new TabBarWidget(
        drawer: new HomeDrawer(),
        title: new Text("电影App"),
        type: TabBarWidget.TOP_TAB,
        tabItems: tabs,
        tabViews: [
          new FilmPage(),
          new BookPage(),
          new MyPage()
        ],
        backgroundColor: Theme.of(context).primaryColor,
        indicatorColor: Theme.of(context).indicatorColor,
      ),
    );
  }

  _renderTab(text) {
    return new Tab(
      child:new Container(
        padding: new EdgeInsets.only(top: 6),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[text],
        ),
      )
    );
  }
}
