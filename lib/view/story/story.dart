import 'package:demo/controller/backend/home/get_stories.dart';
import 'package:demo/model/story_model.dart';
import 'package:demo/view/story/story_component.dart';
import 'package:flutter/material.dart';

class StoryView extends StatelessWidget {
  const StoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<StoryModel> apiStoryResponse = getStories();
    return Scaffold(
      body: SizedBox(
        child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          pageSnapping: true,
          itemCount: apiStoryResponse.length,
          itemBuilder: (context, index) {
            return PageView(
              physics: const BouncingScrollPhysics(),
              children: [
                StoryComponent(
                  storyProfile: apiStoryResponse[index].storyUserProfile,
                  storyTiming: apiStoryResponse[index].storyUserName,
                  storyUserName: apiStoryResponse[index].storyUserName,
                  storyImage: apiStoryResponse[index].storyLink,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
