import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:real_estate/core/core.dart';
import 'package:real_estate/views/screens/home/home.dart';
import 'package:real_estate/views/screens/search/search.dart';
import 'package:real_estate/views/widgets/bottom_nav.dart';

class Dashboard extends HookWidget {
  Dashboard({super.key});

  final Map<TabItem, Widget> pageList = {
    TabItem.search: const SearchScreen(),
    TabItem.message: Container(),
    TabItem.home: const HomeScreen(),
    TabItem.likes: Container(),
    TabItem.profile: Container(),
  };

  @override
  Widget build(BuildContext context) {
    final tabItem = useState(TabItem.home);
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: PageTransitionSwitcher(
        duration: const Duration(
          milliseconds: 200,
        ),
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) =>
            FadeTransition(
          opacity: Tween<double>(
            begin: 0,
            end: 1,
          ).animate(animation),
          child: child,
        ),
        child: pageList[tabItem.value],
      ),
      bottomNavigationBar: BottomNavigation(
        currentTab: tabItem.value,
        onSelectTab: (item) {
          tabItem.value = item;
        },
      ),
    );
  }
}
