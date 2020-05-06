import 'package:flutter/material.dart';
import 'package:flutter_navigation/widget/app_drawer.dart';
import 'package:flutter_navigation/utils.dart';

class NotificationsScreen extends StatelessWidget {
  static const routeName = '/notifications';

  @override
  Widget build(BuildContext context) {
    Utils.showToast('Push and Remove Until Navigation');
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notifications'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.message), onPressed: () {})
        ],
      ),
      body: Center(
        child: Text('No notifications'),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
    );
  }
}
