import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo/view/notifications/cta_button.dart';
import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.userName,
    required this.isFollowing,
    required this.userImage,
  });

  final String userName;
  final bool isFollowing;
  final String userImage;

  @override
  Widget build(BuildContext context) {
    double notificationPadding = MediaQuery.of(context).size.width / 2;
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                  userImage,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: notificationPadding,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: userName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(
                        text: " started following you",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          // Action Button
          CTAButton(isFollowing: isFollowing)
        ],
      ),
    );
  }
}
