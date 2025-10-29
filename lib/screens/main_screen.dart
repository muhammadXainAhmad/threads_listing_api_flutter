import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threads_listing_api/provider/bottom_nav_bar_provider.dart';
import 'package:threads_listing_api/screens/home_screen.dart';
import 'package:threads_listing_api/widgets/bottom_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final pages = const [
    HomeScreen(),
    Center(child: Text("Search")),
    Center(child: Text("Add Post")),
    Center(child: Text("Favorites")),
    Center(child: Text("Profile")),
  ];
  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      body: pages[navProvider.index],
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
