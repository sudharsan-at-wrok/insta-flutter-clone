import 'package:flutter/material.dart';

class NotificationIndiactaor extends StatelessWidget {
  const NotificationIndiactaor({
    super.key,
    required this.notificationTile,
  });

  final String notificationTile;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          bottom: 10,
          top: 15,
        ),
        child: Text(
          notificationTile,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
