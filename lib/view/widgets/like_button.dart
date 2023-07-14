import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({
    super.key,
  });

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

bool isLiked = false;

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20,
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      icon: isLiked
          ? const Icon(
              Icons.favorite,
              size: 28,
              color: Colors.red,
            )
          : const Icon(
              Icons.favorite_outline,
              size: 28,
            ),
    );
  }
}
