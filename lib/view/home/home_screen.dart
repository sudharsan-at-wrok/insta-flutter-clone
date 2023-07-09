import 'package:demo/controller/backend/home/get_posts.dart';
import 'package:demo/controller/backend/home/get_stories.dart';
import 'package:demo/model/post_models.dart';
import 'package:demo/model/story_model.dart';
import 'package:demo/view/home/build_app.dart';
import 'package:demo/view/home/post_component.dart';
import 'package:demo/view/home/story_component.dart';
import 'package:flutter/material.dart';
import 'build_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<StoryModel> apiStories = getStories();
    List<PostModel> apiPosts = getPosts();
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: buildNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              StoryComponent(storyResponse: apiStories),
              for (int i = 0; i < apiPosts.length; i++)
                PostComponent(
                  postData: apiPosts[i],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
