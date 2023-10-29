import 'package:flutter/material.dart';
import 'package:instagram_clone/components/action_bottom_sheet_item.dart';

class PostItemTop extends StatelessWidget {
  final String username;
  final IconData? icon;
  final String profile;
  const PostItemTop(
      {super.key, required this.username, this.icon, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profile),
                radius: 15,
              ),
              const SizedBox(width: 8),
              Text(
                username,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 5),
              Icon(
                icon,
                color: Colors.blueAccent,
                size: 16,
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => _displayActionBottom(context),
            child: const Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}

Future _displayActionBottom(BuildContext context) {
  return showModalBottomSheet(
    showDragHandle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    ),
    context: context,
    builder: (context) => SizedBox(
      height: 900,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        child: Column(
          children: [
            const Row(
              children: [
                ActionBottomSheetItem(
                  icon: Icons.upload,
                  name: 'Share',
                ),
                SizedBox(width: 15),
                ActionBottomSheetItem(
                  icon: Icons.link,
                  name: 'Link',
                ),
                SizedBox(width: 15),
                ActionBottomSheetItem(
                  icon: Icons.bookmark_outline,
                  name: 'Save',
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star_outline),
                      SizedBox(width: 10),
                      Text('Add to Favorites'),
                    ],
                  ),
                  Divider(height: 15),
                  Row(
                    children: [
                      Icon(Icons.person_remove_outlined),
                      SizedBox(width: 10),
                      Text('Unfollow'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person_pin_circle_outlined),
                      SizedBox(width: 10),
                      Text('About This Account'),
                    ],
                  ),
                  Divider(height: 15),
                  Row(
                    children: [
                      Icon(Icons.info_outline_rounded),
                      SizedBox(width: 10),
                      Text("Why you're seeing this post"),
                    ],
                  ),
                  Divider(height: 15),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye_outlined),
                      SizedBox(width: 10),
                      Text('Hide'),
                    ],
                  ),
                  Divider(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.report,
                        color: Colors.red,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Report',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
