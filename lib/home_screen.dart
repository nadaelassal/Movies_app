// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movies/constants/app_theme.dart';
import 'package:movies/tabs/browse_tab.dart';
import 'package:movies/tabs/home_tab.dart';
import 'package:movies/tabs/search_tab.dart';
import 'package:movies/tabs/watch_list_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    BrowseTab(),
    WatchListTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 8,
              ),
            ],
          ),
          child: BottomNavigationBar(
            elevation: 10,
              currentIndex: currentIndex,
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'HOME',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined),
                  label: 'SEARCH',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.movie),
                  label: 'BROWSE',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections_bookmark),
                  label: 'WATCHLIST',
                ),
              ]),
        ));
  }
}
