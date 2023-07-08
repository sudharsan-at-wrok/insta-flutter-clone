import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class StoryContainer extends StatelessWidget {
  const StoryContainer({
    super.key,
    required this.profileImg,
    required this.profileName,
  });

  final String profileImg, profileName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.pink,
                Colors.pinkAccent,
                Colors.amber,
              ],
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.black38,
              radius: 28,
              backgroundImage: profileImg[0] != 'a'
                  ? CachedNetworkImageProvider(profileImg)
                  : Image.asset(profileImg).image,
            ),
          ),
        ),
        SizedBox(
          width: 70,
          child: Text(
            profileName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
