import 'package:flutter/material.dart';

class TabMediaImage extends StatelessWidget {
  final String image;
  const TabMediaImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 150,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
