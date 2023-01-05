import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:presentation/pages/activities/activities_page.dart';
import 'package:presentation/pages/bookmarks/bookmarks_page.dart';
import 'package:presentation/pages/profile/profile_page.dart';
import 'package:presentation/pages/search/search_page.dart';

import 'package:presentation/resources/custom_colors.dart';
import 'package:presentation/resources/vectors.dart';

import '../pages/home/home_page.dart';

class PersistentBottomPage extends StatelessWidget {
  const PersistentBottomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _appScreens(),
      navBarStyle: NavBarStyle.style12,
      items: _navBarItems(),
      navBarHeight: 76,
      bottomScreenMargin: 16,
    );
  }

  List<Widget> _appScreens() {
    return [
      const HomePage(),
      const BookmarksPage(),
      const ActivitiesPage(),
      const SearchPage(),
      const ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
      )
    ];
  }
}
