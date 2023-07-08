import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostInfoComponent extends StatelessWidget {
  const PostInfoComponent({
    super.key,
    required this.profileImg,
    required this.profileUserName,
    required this.profileLocation,
  });

  final String profileImg, profileUserName, profileLocation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black54,
                  backgroundImage: CachedNetworkImageProvider(profileImg),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserName(
                      userName: profileUserName,
                    ),
                    const SizedBox(height: 1),
                    UserLocation(
                      userLocation: profileLocation,
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
            ),
            splashRadius: 10,
          ),
        ],
      ),
    );
  }
}

class UserLocation extends StatelessWidget {
  const UserLocation({
    super.key,
    required this.userLocation,
  });

  final String userLocation;

  @override
  Widget build(BuildContext context) {
    return Text(
      userLocation,
      style: const TextStyle(
        letterSpacing: -1,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({
    super.key,
    required this.userName,
  });

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Text(
      userName,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
