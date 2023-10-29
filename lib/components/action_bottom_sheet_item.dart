import 'package:flutter/material.dart';

class ActionBottomSheetItem extends StatelessWidget {
  final IconData icon;
  final String name;
  const ActionBottomSheetItem(
      {super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Icon(icon),
            const SizedBox(height: 5),
            Text(name),
          ],
        ),
      ),
    );
  }
}
