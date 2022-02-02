import 'package:flutter/material.dart';
import 'package:ui_interface/undergraduate.dart';

import 'Login.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Modules',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/menu_background.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Undergraduate'),
            onTap: () => {
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => Login()))
            },
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Masters'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Fees'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Admission'),
            onTap: () => {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
            ),
          },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              ),
            },
          ),
        ],
      ),
    );
  }
}