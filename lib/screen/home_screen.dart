import 'package:flutter/material.dart';
import 'package:flutter_navigation/widget/app_drawer.dart';
import 'package:flutter_navigation/utils.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    Utils.showToast('Push Navigation');
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),
      body: Center(
        child: Text('My Shop Body'),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
    );
  }
}
