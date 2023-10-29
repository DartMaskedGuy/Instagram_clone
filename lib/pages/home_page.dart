import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/components/post_item.dart';
import 'package:instagram_clone/components/post_item_top.dart';
import 'package:instagram_clone/components/story_item_bar.dart';
import 'package:instagram_clone/components/tool_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: ToolBar(
        title: 'Instagram',
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/share.svg',
              height: 20,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            StoryItemBar(),
            Divider(),
            Column(
              children: [
                PostItemTop(
                    profile: 'assets/images/profile.jpeg',
                    username: 'dartmaskedguy',
                    icon: Icons.verified),
                PostItem(
                  image: 'assets/posts/post.jpg',
                  post:
                      'An edutech startup focusing on revolutionalizing education',
                ),
              ],
            ),
            Column(
              children: [
                PostItemTop(
                    profile: 'assets/images/picture1.jpeg',
                    username: 'gen_martho'),
                PostItem(
                  image: 'assets/posts/post1.jpg',
                  post: 'This is a longer dummy test, used to test content.',
                ),
              ],
            ),
            Column(
              children: [
                PostItemTop(
                  profile: 'assets/images/picture3.jpeg',
                  username: 'flutter_lord',
                ),
                PostItem(
                  image: 'assets/posts/post2.jpg',
                  post: 'This is a longer dummy test, used to test content.',
                ),
              ],
            ),
            Column(
              children: [
                PostItemTop(
                  profile: 'assets/images/picture5.jpeg',
                  username: 'niyomm',
                  icon: Icons.verified,
                ),
                PostItem(
                  image: 'assets/posts/post3.jpg',
                  post: 'This is a longer dummy test, used to test content.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
