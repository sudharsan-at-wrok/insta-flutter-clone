import 'package:flutter/material.dart';

class PostDescription extends StatelessWidget {
  const PostDescription({
    super.key,
    required this.userName,
    required this.postDescription,
  });

  final String userName, postDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: userName,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextSpan(
              text: " $postDescription",
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
