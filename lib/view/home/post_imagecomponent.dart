import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    super.key,
    required this.postLink,
  });

  final String postLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.black45,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(
            postLink,
          ),
        ),
      ),
    );
  }
}
