import 'package:flutter/material.dart';

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
 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(

        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.deepPurple,
          currentIndex: _curIndex,
          onTap: _onTapHandler,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(_curIndex == 0 ? "assets/images/home.png" : "assets/images/off_home.png",height: 27.0,),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Image.asset(_curIndex == 1 ? "assets/images/history.png" : "assets/images/off_history.png",height: 28.0,),
              title: Text('历史')
            ),
            BottomNavigationBarItem(
              icon: Image.asset(_curIndex == 2 ? "assets/images/Listview.png" : "assets/images/off_Listview.png",height: 28.0,),
              title: Text('列表')
            ),
            BottomNavigationBarItem(
              icon: Image.asset(_curIndex == 3 ? "assets/images/wode.png" : "assets/images/off_wode.png",height: 30.0,),
              title: Text('我的')
            ),
          ],
        ),
      ),
    );
  }


  Widget _getViewPage(){
    // switch (_curIndex) {
    //   case :
        
    //     break;
    //   default:
    // }
  }
}
