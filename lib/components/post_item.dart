import 'package:flutter/material.dart';
import 'package:instagram_clone/components/post_action_icon.dart';

class PostItem extends StatelessWidget {
  final String image;
  final String post;
  const PostItem({super.key, required this.image, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PostActionIcon(),
              const SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/profile.jpeg',
                              width: 20,
                              height: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12,
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/picture3.jpeg',
                                width: 20,
                                height: 20,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 24,
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/picture7.jpeg',
                                width: 20,
                                height: 20,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  RichText(
                    text: const TextSpan(
                        text: 'Liked by ',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                        children: [
                          TextSpan(
                            text: 'gen_martho',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: '38,999 others',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  text: 'DartMaskedGuy',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: post,
                      style: const TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text('View all 199 comments'),
              const SizedBox(height: 5),
              const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                    radius: 15,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Add a comment...',
                        hintStyle: TextStyle(
                          fontSize: 13,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 13,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.emoji_emotions,
                        color: Colors.yellow,
                        size: 13,
                      ),
                    ],
                  ),
                ],
              ),
              const Text(
                '22 hours ago',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
