import 'package:flutter/material.dart';
import 'package:instagram_clone/components/stories_item.dart';

class StoryItemBar extends StatelessWidget {
  const StoryItemBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/profile.jpeg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 3,
                            color: Colors.black.withOpacity(0.9),
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 15,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                const Text('Your story')
              ],
            ),
            const SizedBox(width: 5),
            const StoryItem(
                image: 'assets/images/picture4.jpg', username: 'DartMaskedGuy'),
            const StoryItem(
                image: 'assets/images/picture5.jpeg', username: 'FlutterLord'),
            const StoryItem(
                image: 'assets/images/picture6.jpeg', username: 'Genmartho'),
            const StoryItem(
                image: 'assets/images/picture2.jpeg', username: 'Niyomm'),
          ],
        ),
      ),
    );
  }
}
