import 'package:demo/model/post_models.dart';
import 'package:demo/view/home/post_component.dart';
import 'package:demo/view/post/post_appbar.dart';
import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({
    super.key,
    required this.postLists,
    required this.offsetPost,
  });

  final List<PostModel> postLists;
  final double offsetPost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builAppBar(context),
      body: SafeArea(
        child: ListView.builder(
          controller: ScrollController(
            initialScrollOffset: 695 * offsetPost,
          ),
          physics: const BouncingScrollPhysics(),
          itemCount: postLists.length,
          itemBuilder: (context, index) {
            return PostComponent(
              postData: postLists[index],
            );
          },
        ),
      ),
    );
  }
}
