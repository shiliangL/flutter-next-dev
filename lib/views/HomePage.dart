import 'package:flutter/material.dart';
import 'package:flutternext/components/DrawerLayout.dart';

import 'package:flutternext/views/ListPage.dart';
import 'package:flutternext/views/ViewsPage.dart';
import 'package:flutternext/views/My.dart';

import 'package:flutternext/views/tab/TopList.dart';
import 'package:flutternext/views/tab/ActivityList.dart';
import 'package:flutternext/views/tab/ClassType.dart';
import 'package:flutternext/views/tab/Collection.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _curIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      _curIndex = index;
    });
  }

  _getTitle() {
    switch (_curIndex) {
      case 0:
        return '首页';
      case 1:
        return '列表';
      case 2:
        return '历史';
      case 3:
        return '我的';
      default:
        return '';
    }
  }

  _getViewPage() {
    debugPrint('$_curIndex');
    switch (_curIndex) {
      case 0:
        return TabBarView(
          children: <Widget>[
            new TopList(),
            new ActivityList(),
            new ClassType(),
            new Collection(),
          ],
        );
      case 1:
        return new ListPage();
      case 2:
        return new ViewsPage();
      case 3:
        return new My();
    }
  }

  _getBottom() {
    if (_curIndex == 0) {
      return TabBar(
        isScrollable: false,
        unselectedLabelColor: Colors.black38,
        indicatorColor: Colors.black54,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 1.0,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.shopping_cart)),
          Tab(icon: Icon(Icons.spa)),
          Tab(icon: Icon(Icons.star)),
          Tab(icon: Icon(Icons.apps)),
        ],
      );
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(_getTitle(),style: TextStyle(fontSize: 18.0, letterSpacing: 3.0)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('$_curIndex'),
            ),
          ],
          elevation: 0.0,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   color: Colors.white,
          //   onPressed: ()=> debugPrint('$_curIndex'),
          // ),
          bottom: _getBottom(),
        ),
        body: _getViewPage(),
        drawer: new Drawer(
          elevation: 6.0,
          semanticLabel: 'drawer',
          child: new DrawerLayout(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _curIndex,
          onTap: _onTapHandler,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  _curIndex == 0
                      ? "assets/images/home.png"
                      : "assets/images/off_home.png",
                  height: 28.0,
                ),
                title: Text('首页')),
            BottomNavigationBarItem(
                icon: Image.asset(
                  _curIndex == 1
                      ? "assets/images/Listview.png"
                      : "assets/images/off_Listview.png",
                  height: 28.0,
                ),
                title: Text('列表')),
            BottomNavigationBarItem(
                icon: Image.asset(
                  _curIndex == 2
                      ? "assets/images/history.png"
                      : "assets/images/off_history.png",
                  height: 28.0,
                ),
                title: Text('历史')),
            BottomNavigationBarItem(
                icon: Image.asset(
                  _curIndex == 3
                      ? "assets/images/wode.png"
                      : "assets/images/off_wode.png",
                  height: 28.0,
                ),
                title: Text('我的')),
          ],
        ),
      ),
    );
  }
}
