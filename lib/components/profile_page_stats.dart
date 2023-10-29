import 'package:flutter/material.dart';
import 'package:instagram_clone/components/profile_page_stats_card.dart';

class ProfilePageStats extends StatelessWidget {
  const ProfilePageStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProfilePageStatsCard(info: 'Posts', details: '100'),
          ProfilePageStatsCard(info: 'Followers', details: '15k'),
          ProfilePageStatsCard(info: 'Following', details: '1000'),
        ],
      ),
    );
  }
}
