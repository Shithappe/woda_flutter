import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_homeTab.dart';
import 'package:flutter_app/pages/home_saleTab.dart';
import 'CartScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String enterName;
  List todoList = [];
  int currentIndex = 0;
  final mainScreens = [
    const HomeHomeTab(),
    const homeSaleTab(),
    const Cart()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('my name is')),
      body: mainScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.percent),
            label: 'Sale',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Cash',
          ),
        ],
      ),
    );
  }
}
