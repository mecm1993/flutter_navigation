import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final String productName = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: <Widget>[
          Icon(Icons.shopping_basket),
          SizedBox(
            width: 20,
          ),
          Text('Product Detail'),
        ],
      )),
      body: Center(
        child: Text(productName),
      ),
    );
  }
}
