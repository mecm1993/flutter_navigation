import 'package:flutter/material.dart';
import 'package:flutter_navigation/screen/products_screen.dart';
import 'package:flutter_navigation/screen/product_detail_screen.dart';
import 'package:flutter_navigation/screen/orders_screen.dart';
import 'package:flutter_navigation/screen/notifications_screen.dart';
import 'package:flutter_navigation/screen/settings_screen.dart';

final Map<String, WidgetBuilder> routes = {
  ProductsScreen.routeName: (_) => ProductsScreen(),
  ProductDetailScreen.routeName: (_) => ProductDetailScreen(),
  OrdersScreen.routeName: (_) => OrdersScreen(),
  NotificationsScreen.routeName: (_) => NotificationsScreen(),
  SettingsScreen.routeName: (_) => SettingsScreen(),
};
