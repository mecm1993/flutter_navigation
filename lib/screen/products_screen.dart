import 'package:flutter/material.dart';
import 'package:flutter_navigation/model/product.dart';
import 'package:flutter_navigation/screen/product_detail_screen.dart';

class ProductsScreen extends StatelessWidget {
  static const routeName = '/product-list';

  final List<Product> _productList = [
    Product('1', 'Adidas Shoes', 99.98),
    Product('2', 'Nike Shoes', 129.98),
    Product('3', 'Reebok Shoes', 399.98),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ListView.builder(
        itemCount: _productList.length,
        itemBuilder: (ctx, index) => ListTile(
          leading: CircleAvatar(child: Text(_productList[index].id)),
          title: Text(_productList[index].name),
          trailing: Text(_productList[index].price.toStringAsFixed(2)),
          onTap: (){
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName, arguments: _productList[index].name);
          },
        ),
      ),
    );
  }
}
