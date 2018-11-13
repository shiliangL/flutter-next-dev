import 'package:flutter/material.dart';
import 'package:flutternext/components/DrawerLayout.dart';

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
    switch (_curIndex) {
      case 0:
        return new TabBarView(
          children: [
            new Center(child: new Text("首页")),
            new Center(child: new Text("首页")),
          ],
        );
      case 1:
        return new TabBarView(
          children: [
            new Center(child: new Text("列表")),
            new Center(child: new Text("列表")),
          ],
        );
      case 2:
        return new TabBarView(
          children: [
            new Center(child: new Text("历史")),
            new Center(child: new Text("历史")),
          ],
        );
      case 3:
        return new TabBarView(
          children: [
            new Center(child: new Text("我的")),
            new Center(child: new Text("我的")),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(_getTitle(),style: TextStyle(fontSize: 18.0, letterSpacing: 3.0, color: Colors.white)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              tooltip: 'Search',
              onPressed: () => debugPrint('$_curIndex'),
            )
          ],
          elevation: 0.0,
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
