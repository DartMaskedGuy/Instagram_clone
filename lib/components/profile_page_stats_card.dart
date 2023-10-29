import 'package:flutter/material.dart';

class ProfilePageStatsCard extends StatelessWidget {
  final String info;
  final String details;
  const ProfilePageStatsCard(
      {super.key, required this.info, required this.details});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          details,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          info,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
