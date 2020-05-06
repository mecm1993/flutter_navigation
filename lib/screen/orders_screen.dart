import 'package:flutter/material.dart';
import 'package:flutter_navigation/widget/app_drawer.dart';
import 'package:flutter_navigation/utils.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    Utils.showToast('Push Replacement Named Navigation');
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      body: Center(
        child: Text('No orders'),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
    );
  }
}
