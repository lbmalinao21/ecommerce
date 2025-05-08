import 'package:e_commerce/components/bottom_nav_bar.dart';
import 'package:e_commerce/pages/cart_page.dart';
import 'package:e_commerce/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //controlling bottom navbar
  int _selectedIndex = 0;
  //index updater
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index), 
      ),
      body: _pages[_selectedIndex],
    );
  }
}