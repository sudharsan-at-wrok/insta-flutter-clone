import 'package:demo/model/follower_model.dart';
import 'package:demo/view/notifications/notification_tile.dart';
import 'package:flutter/material.dart';

class NotificationBuilder extends StatelessWidget {
  const NotificationBuilder({
    super.key,
    required this.notifcationList,
  });

  final List<FollowersModel> notifcationList;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        childAspectRatio: 6,
      ),
      itemCount: notifcationList.length,
      itemBuilder: (context, index) {
        return NotificationTile(
          userName: notifcationList[index].followerUserName,
          isFollowing: notifcationList[index].isFollowing,
          userImage: notifcationList[index].followerProfileImage,
        );
      },
    );
  }
}
