import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/pages/add_post_page.dart';
import 'package:instagram_clone/pages/home_page.dart';
import 'package:instagram_clone/pages/profile_page.dart';
import 'package:instagram_clone/pages/reels_page.dart';
import 'package:instagram_clone/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        iconSize: 28,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/search.svg',
                height: 24,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: 'Search'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Add'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/reels.svg',
                height: 24,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: 'Reels'),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpeg'),
                radius: 15,
              ),
              label: 'Profile'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
      body: pages[currentIndex],
    );
  }

  final pages = const [
    HomePage(),
    SearchPage(),
    AddPostPage(),
    ReelsPage(),
    ProfilePage(),
  ];
}
