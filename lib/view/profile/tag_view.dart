import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo/model/post_models.dart';
import 'package:flutter/material.dart';

class TaggedView extends StatelessWidget {
  const TaggedView({
    super.key,
    required this.postLinks,
  });

  final List<PostModel> postLinks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
        left: 5,
        right: 5,
      ),
      child: postLinks.isNotEmpty
          ? GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: postLinks.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 1,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                maxCrossAxisExtent: 140,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        postLinks[index].postImage,
                      ),
                    ),
                  ),
                );
              },
            )
          : Container(
              margin: const EdgeInsets.only(top: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                    child: const Icon(
                      Icons.tag_outlined,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "You have'nt tagged in any post",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
