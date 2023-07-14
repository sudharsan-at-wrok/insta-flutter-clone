import 'package:demo/view/notifications/notifications.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/logo.png",
        ),
        IconButton(
          splashRadius: 10,
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
        )
      ],
    ),
    leadingWidth: MediaQuery.of(context).size.width / 2,
    actions: [
      Stack(
        children: [
          IconButton(
            splashRadius: 10,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
          ),
          const Positioned(
            top: 12,
            right: 10,
            child: CircleAvatar(
              radius: 5,
              backgroundColor: Colors.pink,
            ),
          )
        ],
      ),
      IconButton(
        splashRadius: 10,
        onPressed: () {},
        icon: Image.asset(
          height: 22,
          "assets/comment.png",
        ),
      ),
    ],
  );
}
