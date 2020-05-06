import 'package:flutter/material.dart';
import 'package:flutter_navigation/screen/home_screen.dart';
import 'package:flutter_navigation/screen/products_screen.dart';
import 'package:flutter_navigation/screen/notifications_screen.dart';
import 'package:flutter_navigation/screen/settings_screen.dart';
import 'package:flutter_navigation/screen/orders_screen.dart';
import 'package:flutter_navigation/screen/undefined_screen.dart';
import 'package:flutter_navigation/model/settings.dart';

class AppDrawer extends StatelessWidget {
  final String _email = 'one@email.com';
  final String _name = 'Admin';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(_email),
            subtitle: Text(_name),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket, color: Colors.blue),
            title: Text('My Products'),
            onTap: () {
              Navigator.of(context).pushNamed(ProductsScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.folder_open, color: Colors.blue),
            title: Text('My Orders'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.message, color: Colors.blue),
            title: Text('Notifications'),
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => NotificationsScreen()),
                  ModalRoute.withName(NotificationsScreen.routeName));
            },
          ),
          ListTile(
            leading: Icon(Icons.warning, color: Colors.blue),
            title: Text('Undefined'),
            onTap: () {
              Navigator.of(context).pushNamed(UndefinedScreen.routeName);
            },
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.blue),
                title: Text('Settings'),
                onTap: () {
                  Navigator.of(context).popAndPushNamed(
                      SettingsScreen.routeName,
                      arguments: Settings(_email, _name));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
