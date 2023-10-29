import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostActionIcon extends StatelessWidget {
  const PostActionIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Icon(Icons.favorite_outline),
            const SizedBox(width: 12),
            GestureDetector(
              onTap: () => _displayBottomSheet(context),
              child: SvgPicture.asset(
                'assets/svg/comment.svg',
                height: 20,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
            const SizedBox(width: 12),
            SvgPicture.asset(
              'assets/svg/share.svg',
              height: 20,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ],
        ),
        const Spacer(),
        const Icon(Icons.bookmark_outline),
      ],
    );
  }
}

Future _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    elevation: 0,
    showDragHandle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    ),
    context: context,
    builder: (context) => SizedBox(
      height: 700,
      width: MediaQuery.sizeOf(context).width,
      child: const Column(
        children: [
          Text(
            'Comments',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Divider(),
          Spacer(),
          Text(
            'No comments yet.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Start the conversation',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 13,
              color: Colors.white54,
            ),
          ),
          Spacer(),
        ],
      ),
    ),
  );
}
