import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threads_listing_api/provider/bottom_nav_bar_provider.dart';
import 'package:threads_listing_api/utils/utils.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<BottomNavBarProvider>(context);

    return BottomNavigationBar(
      currentIndex: navProvider.index,
      backgroundColor: whiteClr,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: blueGreyClr,
      selectedItemColor: blackClr,
      iconSize: 28,
      onTap: (index) => navProvider.setIndex(index),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ""),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: "",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ],
    );
  }
}
