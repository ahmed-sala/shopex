import 'package:ecomerce/screens/cart/cart_screen.dart';
import 'package:ecomerce/screens/home_screen.dart';
import 'package:ecomerce/screens/profile_screen.dart';
import 'package:ecomerce/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late PageController controller;
  int curentScreen = 0;
  List<Widget> screens = [
    HomeScreen(),
    Searchscreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(initialPage: curentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: screens,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            curentScreen = index;
          });
          controller.jumpToPage(curentScreen);
        },
        selectedIndex: curentScreen,
        elevation: 2,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        height: kBottomNavigationBarHeight,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.home),
            icon: Icon(IconlyLight.home),
            label: 'home',
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.search),
            icon: Icon(IconlyLight.search),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.bag2),
            icon: Badge(
              backgroundColor: Colors.blue,
              label: Text("6"),
              child: Icon(IconlyLight.bag2),
            ),
            label: 'Cart',
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.profile),
            icon: Icon(IconlyLight.profile),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
