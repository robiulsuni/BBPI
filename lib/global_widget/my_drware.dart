import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Wrap(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Icon(Icons.verified_user_sharp),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.admin_panel_settings),
            title: Text('Administration'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.details),
            title: Text('About Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.details),
            title: Text('Contact Us'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
