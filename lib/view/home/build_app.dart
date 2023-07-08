import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    
    backgroundColor: Colors.white,
    elevation: 1,
    leading: Image.asset(
      "assets/logo.png",
      height: 25,
    ),
    leadingWidth: MediaQuery.of(context).size.width / 3,
    actions: [
      IconButton(
        splashRadius: 10,
        onPressed: () {},
        icon: const Icon(
          Icons.favorite_outline,
          color: Colors.black,
        ),
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
