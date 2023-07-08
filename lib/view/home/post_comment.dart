import 'package:flutter/material.dart';

class PostComment extends StatelessWidget {
  const PostComment({
    super.key,
    required this.postComment,
  });

  final int postComment;

  @override
  Widget build(BuildContext context) {
    String commentsCount = postComment > 1000
        ? ' ${postComment ~/ 1000}k'
        : postComment.toString();
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "View all $commentsCount comments",
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/profile.png"),
              ),
              SizedBox(width: 5),
              Text(
                "Add a comment...",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            "3 Days ago",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
