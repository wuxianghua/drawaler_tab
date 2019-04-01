import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomeDrawer();
  }

}

class _HomeDrawer extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Drawer(
      elevation: 14,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text("电影App"),
          elevation: 50,
        ),
        body: new Text("Drawer"),
      ),
    );
  }

}