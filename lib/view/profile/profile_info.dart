import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
    required this.post,
    required this.followers,
    required this.following,
  });

  final int post, followers, following;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 38,
            backgroundColor: Colors.black45,
            backgroundImage: AssetImage("assets/profile.png"),
          ),
          ProfileOverview(
            postCount: post,
            followersCount: followers,
            followingCount: following,
          ),
        ],
      ),
    );
  }
}

class ProfileOverview extends StatelessWidget {
  const ProfileOverview({
    super.key,
    required this.postCount,
    required this.followersCount,
    required this.followingCount,
  });

  final int postCount, followersCount, followingCount;

  static List<String> statTile = [
    'Posts',
    'Followers',
    'Following',
  ];

  @override
  Widget build(BuildContext context) {
    List<int> stat = [postCount, followersCount, followingCount];
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 3; i++)
            UserInfoTile(
              statCount: stat[i],
              statTile: statTile[i],
            ),
        ],
      ),
    );
  }
}

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({
    super.key,
    required this.statCount,
    required this.statTile,
  });

  final int statCount;
  final String statTile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            statCount > 1000
                ? "${(statCount ~/ 1000).toString()}K"
                : statCount.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            statTile,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
