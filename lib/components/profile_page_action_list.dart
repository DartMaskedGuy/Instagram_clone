import 'package:flutter/material.dart';

class ProfilePageActionList extends StatelessWidget {
  final String text;
  final IconData icon;
  const ProfilePageActionList(
      {super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 22),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
