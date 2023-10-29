import 'package:flutter/material.dart';
import 'package:instagram_clone/components/tab_media_image.dart';

class ProfilePageTabMedia extends StatelessWidget {
  const ProfilePageTabMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabMediaImage(
              image: 'assets/images/picture1.jpeg',
            ),
            SizedBox(width: 1),
            TabMediaImage(
              image: 'assets/images/picture2.jpeg',
            ),
            SizedBox(width: 1),
            TabMediaImage(
              image: 'assets/images/picture3.jpeg',
            ),
          ],
        ),
        SizedBox(height: 1),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabMediaImage(
              image: 'assets/images/picture6.jpeg',
            ),
            SizedBox(width: 1),
            TabMediaImage(
              image: 'assets/images/picture5.jpeg',
            ),
            SizedBox(width: 1),
            TabMediaImage(
              image: 'assets/images/picture8.jpeg',
            ),
          ],
        ),
      ],
    );
  }
}
