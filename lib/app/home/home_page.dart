import 'package:drop_check/app/home/pages/drop_page.dart';
import 'package:drop_check/app/home/pages/news_page.dart';
import 'package:drop_check/app/home/pages/sale_page.dart';
import 'package:drop_check/widgets/account_drawner.dart';
import 'package:drop_check/widgets/bottom_nav_bar.dart';
import 'package:drop_check/widgets/notification_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const NewsPage(),
    const DropPage(),
    const SalePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var notificationSettings = Provider.of<NotificationSettings>(context);

    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.person,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: AccountDrawner(notificationSettings: notificationSettings),
      body: _pages[_selectedIndex],
    );
  }
}
