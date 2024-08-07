// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:king_gold/Views/BestSeller/best_seller_screen.dart';
import 'package:king_gold/Views/GiftStore/gift_store_screen.dart';
import '../Category/category_screen.dart';
import '../Help/help_screen.dart';
import '../HomePage/home_page_screen.dart';

const List<TabItem> items = [
  TabItem(
    icon: Icons.home,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.category_sharp,
    title: 'Category',
  ),
  TabItem(
    icon: Icons.select_all_outlined,
    title: 'Best Seller',
  ),
  TabItem(
    icon: Icons.card_giftcard_rounded,
    title: 'Gift Store',
  ),
  TabItem(
    icon: Icons.account_box,
    title: 'Help',
  ),
];

class TabItem {
  final IconData icon;
  final String title;

  const TabItem({required this.icon, required this.title});
}

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: items.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomePageScreen(),
          CategoryScreen(),
          BestSellerScreen(),
          GiftStoreScreen(),
          HelpScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[900],
        unselectedItemColor: Colors.black,
        currentIndex: _tabController.index,
        onTap: (index) {
          setState(() {
            _tabController.index = index;
          });
        },
        items: items
            .map((item) => BottomNavigationBarItem(
                  icon: Icon(item.icon),
                  label: item.title,
                ))
            .toList(),
      ),
    );
  }
}
