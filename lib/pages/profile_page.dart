import 'package:flutter/material.dart';
import 'package:instagram_clone/components/profile_page_action_list.dart';
import 'package:instagram_clone/components/profile_page_stats.dart';
import 'package:instagram_clone/components/profile_page_tabs.dart';
import 'package:instagram_clone/components/tool_bar.dart';
import 'package:instagram_clone/components/user_info.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: ToolBar(
          title: 'dartmaskedguy',
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box_outlined, size: 28),
            ),
            IconButton(
              onPressed: () {
                _displayBottomSheet(context);
              },
              icon: const Icon(Icons.menu, size: 28),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/images/profile.jpeg',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 3,
                                color: Colors.black,
                              )),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 40),
                  const ProfilePageStats(),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            const UserInfo(),
            const SizedBox(height: 10),
            const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.grid_4x4_rounded)),
                Tab(icon: Icon(Icons.person_4_outlined)),
              ],
            ),
            const ProfilePageTabs(),
          ],
        ),
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      showDragHandle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      context: context,
      builder: (context) => const SizedBox(
        height: 700,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProfilePageActionList(
                  icon: Icons.settings_outlined,
                  text: 'Settings and privacy',
                ),
                Divider(height: 35),
                ProfilePageActionList(
                  icon: Icons.timer_outlined,
                  text: 'Scheduled content',
                ),
                Divider(height: 35),
                ProfilePageActionList(
                  icon: Icons.timelapse_outlined,
                  text: 'Your activity',
                ),
                Divider(height: 35),
                ProfilePageActionList(
                  icon: Icons.timelapse_outlined,
                  text: 'Archive',
                ),
                Divider(height: 35),
                ProfilePageActionList(
                  icon: Icons.bar_chart_outlined,
                  text: 'Insights',
                ),
                Divider(height: 35),
                ProfilePageActionList(
                  icon: Icons.qr_code,
                  text: 'QR Code',
                ),
                Divider(height: 35),
                ProfilePageActionList(
                  icon: Icons.bookmark_outline,
                  text: 'Saved',
                ),
                Divider(height: 35),
                ProfilePageActionList(
                  icon: Icons.list,
                  text: 'Close friends',
                ),
                Divider(height: 35),
                ProfilePageActionList(
                  icon: Icons.star_outline,
                  text: 'Favorites',
                ),
                Divider(height: 35),
                ProfilePageActionList(
                  icon: Icons.person_add_outlined,
                  text: 'Discover people',
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
