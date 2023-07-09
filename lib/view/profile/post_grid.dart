import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo/model/post_models.dart';
import 'package:demo/view/post/post.dart';
import 'package:flutter/material.dart';

class PostGridView extends StatelessWidget {
  const PostGridView({
    super.key,
    required this.postLink,
  });

  final List<PostModel> postLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
        left: 5,
        right: 5,
      ),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: postLink.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 1,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          maxCrossAxisExtent: 140,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostView(
                    postLists: postLink,
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    postLink[index].postImage,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
