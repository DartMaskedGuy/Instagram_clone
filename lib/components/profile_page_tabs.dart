import 'package:flutter/material.dart';
import 'package:instagram_clone/components/profile_page_tab_media.dart';

class ProfilePageTabs extends StatelessWidget {
  const ProfilePageTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TabBarView(
        children: [
          ProfilePageTabMedia(),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_3_outlined,
                    size: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Photos and videos of you',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "When people tag you in photos and videos, \n they'll appear here.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
