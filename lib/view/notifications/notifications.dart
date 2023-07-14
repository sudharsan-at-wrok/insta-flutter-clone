import 'package:demo/controller/backend/notification/get_notifications.dart';
import 'package:demo/model/follower_model.dart';
import 'package:demo/view/notifications/notification_appbar.dart';
import 'package:demo/view/notifications/notification_indicator.dart';
import 'package:demo/view/notifications/recent_notifications.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<FollowersModel> notificationList = getNotification();
    final int length = notificationList.length ~/ 1.9;
    return Scaffold(
      appBar: builAppBar(context),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const NotificationIndiactaor(
            notificationTile: "Past 30 Days",
          ),
          NotificationBuilder(
            notifcationList: notificationList.sublist(0, length),
          ),
          const NotificationIndiactaor(
            notificationTile: "Older",
          ),
          NotificationBuilder(
            notifcationList: notificationList.sublist(
              length,
              notificationList.length,
            ),
          ),
        ],
      ),
    );
  }
}
