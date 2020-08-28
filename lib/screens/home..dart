import 'package:Myshop/screens/cart.dart';
import 'package:Myshop/screens/orders.dart';
import 'package:Myshop/screens/products_overwiew.dart';
import 'package:Myshop/screens/profile.dart';
import 'package:Myshop/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, String>> _navElements = [
    {
      "icon": 'assets/icons/home.svg',
      "title": 'Home',
      'active': 'assets/icons/homeActive.svg'
    },
    {
      "icon": 'assets/icons/order.svg',
      "title": 'Orders',
      'active': 'assets/icons/order.svg'
    },
    {
      "icon": 'assets/icons/cart.svg',
      "title": 'Cart',
      'active': 'assets/icons/cartActive.svg'
    },
    {
      "icon": 'assets/icons/profile.svg',
      "title": 'Profile',
      'active': 'assets/icons/profileActive.svg'
    },
  ];
  List<Widget> _screens = [ProductsOverwiew(), Orders(), Cart(), Profile()];

  int _currentIndex = 0;
  void _changeScreen(int pageIndex) {
    setState(() {
      _currentIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        navElements: _navElements,
        currentIndex: _currentIndex,
        changePage: _changeScreen,
      ),
      body: _screens[_currentIndex],
    );
  }
}
