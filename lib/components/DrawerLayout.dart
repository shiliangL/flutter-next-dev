import 'package:flutter/material.dart';

class DrawerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new DrawerHeader(
          decoration: new BoxDecoration(
            color: Colors.white,
          ),
          child: new Column(
            children: <Widget>[
              new Expanded(
                child: new Align(
                  alignment: Alignment.bottomCenter,
                  child: new Column(
                    children: <Widget>[
                      new CircleAvatar(
                        child: new Text('S'),
                      ),
                      new Text('developers', style: Theme.of(context).textTheme.title),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        new AboutListTile(
          icon: new Icon(Icons.person),
          child: new Text('关于开发'),
          applicationLegalese: '',
          applicationName: '关于开发',
          applicationVersion: '',
        ),
        new AboutListTile(
          icon: new Icon(Icons.person),
          child: new Text('关于项目'),
          applicationLegalese: '',
          applicationName: '关于项目',
          applicationVersion: '',
        ),
      ],
    );
  }
}
