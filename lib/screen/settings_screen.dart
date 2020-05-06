import 'package:flutter/material.dart';
import 'package:flutter_navigation/widget/app_drawer.dart';
import 'package:flutter_navigation/model/settings.dart';
import 'package:flutter_navigation/utils.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    Utils.showToast('Pop and Push Navigation');
    final Settings settings = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Email',
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Text(settings.email),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Name',
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Text(settings.name),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
    );
  }
}
