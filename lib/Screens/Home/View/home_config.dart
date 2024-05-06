import 'package:e_learning/Screens/MyCourse/View/my_course_tab.dart';
import 'package:e_learning/Screens/home/View/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeConfig extends StatefulWidget {
  const HomeConfig({super.key});

  @override
  State<HomeConfig> createState() => _HomeConfigState();
}

class _HomeConfigState extends State<HomeConfig> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const MyCourseTab(),
      const MyCourseScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Home"),
        textStyle: const TextStyle(
            fontFamily: 'Roboto-bold', fontWeight: FontWeight.w700),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.bookmark),
        title: ("My Course"),
        textStyle: const TextStyle(
            fontFamily: 'Roboto-bold', fontWeight: FontWeight.w700),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.chat),
        title: ("Chat"),
        textStyle: const TextStyle(
            fontFamily: 'Roboto-bold', fontWeight: FontWeight.w700),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.account_circle),
        title: ("Profile"),
        textStyle: const TextStyle(
            fontFamily: 'Roboto-bold', fontWeight: FontWeight.w700),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10.0)),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Home Screen"),
    );
  }
}



class MyCourseScreen extends StatelessWidget {
  const MyCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Settings Screen"),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Settings Screen"),
    );
  }
}
