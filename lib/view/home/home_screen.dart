import 'package:demo/controller/backend/get_posts.dart';
import 'package:demo/controller/backend/get_stories.dart';
import 'package:demo/model/post_models.dart';
import 'package:demo/model/story_model.dart';
import 'package:demo/view/home/build_app.dart';
import 'package:demo/view/home/post_component.dart';
import 'package:demo/view/home/story_component.dart';
import 'package:flutter/material.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 28,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 28,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 28,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call_rounded,
              color: Colors.black,
              size: 28,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png"),
            ),
            label: "",
          ),
        ],
      ),
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
