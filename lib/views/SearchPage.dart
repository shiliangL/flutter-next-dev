import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('搜索', style: TextStyle(fontSize: 18.0, letterSpacing: 3.0)),
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.search),
          //   tooltip: 'Search',
          //   onPressed: () => Navigator.pushNamed(context, '/search'),
          // ),
        ],
      ),
    );
    // return Container(
    //    child: new Text("收搜页面"),
    // );
  }
}
