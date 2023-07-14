import 'package:flutter/material.dart';

class CTAButton extends StatelessWidget {
  const CTAButton({
    super.key,
    required this.isFollowing,
  });

  final bool isFollowing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      height: 35,
      width: 90,
      decoration: BoxDecoration(
        color: isFollowing ? Colors.black12 : Colors.blue,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Center(
        child: Text(
          isFollowing ? "Following" : "Follow",
          style: TextStyle(
            color: isFollowing ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
