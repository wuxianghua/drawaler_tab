import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget{
  //底部模式
  static const int BOTTOM_TAB = 1;
  //顶部模式
  static const int TOP_TAB = 2;

  final int type;
  final List<Widget> tabItems;
  final List<Widget> tabViews;
  final Color backgroundColor;
  final Color indicatorColor;
  final Widget title;
  final Widget drawer;
  final Widget floatingActionButton;
  final ValueChanged<int> onPageChanged;

  TabBarWidget({
    Key key,
    this.type,
    this.tabItems,
    this.tabViews,
    this.backgroundColor,
    this.indicatorColor,
    this.title,
    this.drawer,
    this.floatingActionButton,
    this.onPageChanged
  }):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _TabBarState(this.type, this.tabViews, this.indicatorColor, this.title, this.drawer,this.onPageChanged);
  }

}

class _TabBarState extends State<TabBarWidget> with SingleTickerProviderStateMixin {
  final int _type;
  final List<Widget> _tabViews;
  final Color _indicatorColor;
  final Widget _title;
  final Widget _drawer;
  final ValueChanged<int> _onPageChanged;

  _TabBarState(
      this._type,
      this._tabViews,
      this._indicatorColor,
      this._title,
      this._drawer,
      this._onPageChanged
      ):super();

  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: widget.tabItems.length, vsync: this);
    _pageController = new PageController(initialPage: 0,keepPage: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
    _pageController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    if(this._type == TabBarWidget.TOP_TAB) {
      return new Scaffold(
        drawer: _drawer,
        appBar: new AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: _title,
          bottom: new TabBar(
              tabs: widget.tabItems,
              controller: _tabController,
              indicatorColor: _indicatorColor,
              onTap: (index) {
                _pageController.jumpToPage(index);
              },
          ),
        ),
        body: new PageView(
          controller: _pageController,
          children: _tabViews,
          onPageChanged: (index) {
            _tabController.animateTo(index);
            _onPageChanged?.call(index);
          },
        ),
      );
    }
    return new Scaffold(
      drawer: _drawer,
      appBar: new AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: _title,
      ),
      body: new TabBarView(children:
        _tabViews,
        controller: _tabController,
      ),
      bottomNavigationBar: new Material(
        color: Theme.of(context).primaryColor,
        child: new TabBar(tabs:
          widget.tabItems,
          indicatorColor: _indicatorColor,
          controller: _tabController,
        ),
      ),
    );
  }

}