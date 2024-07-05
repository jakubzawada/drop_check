import 'package:drop_check/app/home/pages/drop_page.dart';
import 'package:drop_check/app/home/pages/news_page.dart';
import 'package:drop_check/app/home/pages/sale_page.dart';
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
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                const Icon(
                  Icons.person,
                  size: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Powiadomienia',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey[600],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Dropy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Transform.scale(
                        scale: 0.75,
                        child: Switch.adaptive(
                          value: notificationSettings.dropIsSwitched,
                          onChanged: (bool value) {
                            notificationSettings.toggleDrop(value);
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey[600],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Promocje Męskie',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Transform.scale(
                        scale: 0.75,
                        child: Switch.adaptive(
                          value: notificationSettings.manSaleIsSwitched,
                          onChanged: (bool value) {
                            notificationSettings.toggleManSale(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey[600],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Promocje Damskie',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Transform.scale(
                        scale: 0.75,
                        child: Switch.adaptive(
                          value: notificationSettings.womanSaleIsSwitched,
                          onChanged: (bool value) {
                            notificationSettings.toggleWomanSale(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey[600],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Inne',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Transform.scale(
                        scale: 0.75,
                        child: Switch.adaptive(
                          value: notificationSettings.otherIsSwitched,
                          onChanged: (bool value) {
                            notificationSettings.toggleOther(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey[600],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Ogólne',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey[600],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.brightness_2_outlined),
                          Text(
                            'Tryb Ciemny',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Transform.scale(
                        scale: 0.75,
                        child: Switch.adaptive(
                          value: notificationSettings.darkModeIsSwitched,
                          onChanged: (bool value) {
                            notificationSettings.toggleDarkMode(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey[600],
                ),
                const Spacer(),
                ListTile(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, 'intro_page', (route) => false),
                  leading: Icon(
                    Icons.logout,
                    color: Colors.grey[800],
                  ),
                  title: Text(
                    'Wyjście',
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
