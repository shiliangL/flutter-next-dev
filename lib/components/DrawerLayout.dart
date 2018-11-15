import 'package:flutter/material.dart';

class DrawerLayout extends StatefulWidget {
  _DrawerLayoutState createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('shiliangL',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
            accountEmail: Text('shiliangL@qq.com',style: TextStyle(fontSize: 12.0),),
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://resources.ninghao.org/images/dragon.jpg')),
            // decoration: BoxDecoration(
            //   image: DecorationImage(image: NetworkImage( 'https://resources.ninghao.org/images/dragon.jpg'),
            //   fit: BoxFit.cover, 
            //   colorFilter: ColorFilter.mode( Color.fromARGB(255, 57, 188, 156).withOpacity(0.65),BlendMode.lighten)
            // )),
          ),
          ListTile(
            title: Text('消息', textAlign: TextAlign.left),
            leading: Icon(Icons.sms,color: Colors.black45,size:20.0),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('附近', textAlign: TextAlign.left),
            leading: Icon(Icons.near_me,color: Colors.black45,size:20.0),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('商城', textAlign: TextAlign.left),
            leading: Icon(Icons.store,color: Colors.black45,size:20.0),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('设置', textAlign: TextAlign.left),
            leading: Icon(Icons.settings,color: Colors.black45,size:20.0),
            onTap: ()=>Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
