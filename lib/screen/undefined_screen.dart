import 'package:flutter/material.dart';
import 'package:flutter_navigation/utils.dart';

class UndefinedScreen extends StatelessWidget {
  static const routeName = '/undefined';
  final String name;
  const UndefinedScreen({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Utils.showToast('Unknown Route');
    return Scaffold(
      appBar: AppBar(
        title: Text('Warning'),
      ),
      body: Center(
        child: Text('Route for $name is not defined'),
      ),
    );
  }
}