import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String username;
  final String image;
  const StoryItem({super.key, required this.image, required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.yellow,
                  Colors.deepOrangeAccent,
                  Colors.red,
                  Colors.pink,
                ],
                stops: [
                  0.0,
                  0.16 * 2,
                  0.16 * 3,
                  0.16 * 4,
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                image,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 65,
            child: Text(
              username,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
