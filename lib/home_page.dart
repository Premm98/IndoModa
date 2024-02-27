import 'package:flutter/material.dart';
import 'package:indi_moda/cart_page.dart';
import 'package:indi_moda/product_list.dart';
import 'package:indi_moda/settings_page.dart';
import 'package:indi_moda/user_profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    const ProductList(),
    const CartPage(),
    const UserProfilePage(),
    const SettingPage(),
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    // Defining the border

    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedIconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.primary),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}
