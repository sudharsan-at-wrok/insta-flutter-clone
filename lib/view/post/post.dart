import 'package:demo/model/post_models.dart';
import 'package:demo/view/home/post_component.dart';
import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({super.key, required this.postLists});

  final List<PostModel> postLists;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return PostComponent(
                postData: postLists[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
