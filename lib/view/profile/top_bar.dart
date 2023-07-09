import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.userPorifleName,
  });

  final String userPorifleName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              const Icon(
                weight: 10,
                Icons.lock_outline,
                size: 24,
                fill: 1,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: Text(
                  userPorifleName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(
              splashRadius: 10,
              onPressed: () {},
              icon: const Icon(Icons.add_box_outlined),
            ),
            IconButton(
              splashRadius: 10,
              onPressed: () {},
              icon: const Icon(Icons.list_outlined),
            ),
          ],
        )
      ],
    );
  }
}
