import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/views/home_page/home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomePageNavBar extends StatefulWidget {
  const HomePageNavBar({super.key});

  @override
  State<HomePageNavBar> createState() => _HomePageNavBarState();
}

class _HomePageNavBarState extends State<HomePageNavBar> {
  late PersistentTabController _controller;

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.home_outlined),
            title: "Home",
            activeColorPrimary: Colors.grey.shade200,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple,
            activeColorSecondary: AppColors.blue1),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.search),
            title: "Search",
            activeColorPrimary: Colors.grey.shade200,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple,
            activeColorSecondary: AppColors.blue1),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.favorite_border),
            title: "Favourite",
            activeColorPrimary: Colors.grey.shade200,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple,
            activeColorSecondary: AppColors.blue1),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.key_outlined),
            title: "Key",
            activeColorPrimary: Colors.grey.shade200,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple,
            activeColorSecondary: AppColors.blue1),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.person_outline),
            title: "Profile",
            activeColorPrimary: Colors.grey.shade200,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple,
            activeColorSecondary: AppColors.blue1),
      ];

  List<Widget> _buildScreens() => [
        HomePage(),
        HomePage(),
        HomePage(),
        HomePage(),
        HomePage(),
      ];

  @override
  void initState() {
    _controller = PersistentTabController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PersistentTabView(
            context,
            screens: _buildScreens(),
            controller: _controller,
            items: _navBarsItems(),
            padding: NavBarPadding.fromLTRB(10, 10, 20, 20),
            margin: EdgeInsets.all(15),

            resizeToAvoidBottomInset: true,
            navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
                ? 0.0
                : kBottomNavigationBarHeight,
            bottomScreenMargin: 0,
            backgroundColor: AppColors.blue1, // Colors.transparent,

            decoration: const NavBarDecoration(
                colorBehindNavBar: Colors.indigo,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
            ),
            navBarStyle: NavBarStyle
                .style7, // Choose the nav bar style with this property
          ),
        ],
      ),
    );
  }
}
