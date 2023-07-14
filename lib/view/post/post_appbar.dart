import 'package:flutter/material.dart';

AppBar builAppBar(BuildContext context) {
  return AppBar(
    leadingWidth: MediaQuery.of(context).size.width,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: Row(
      children: [
        IconButton(
          splashRadius: 20,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        const Text(
          "Posts",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
