import 'package:demo/model/story_model.dart';
import 'package:demo/view/home/story_container.dart';
import 'package:flutter/material.dart';

class StoryComponent extends StatelessWidget {
  const StoryComponent({
    super.key,
    required this.storyResponse,
  });

  final List<StoryModel> storyResponse;

  @override
  Widget build(BuildContext context) {
    storyResponse.insert(
      0,
      StoryModel(
        storyUserName: "Sudharsan",
        storyUserProfile: "assets/profile.png",
        storyLink: "",
        storyIsSeen: true,
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 88,
        width: double.infinity,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: storyResponse.length,
          itemBuilder: (context, index) {
            return StoryContainer(
              profileImg: storyResponse[index].storyUserProfile,
              profileName: storyResponse[index].storyUserName,
            );
          },
        ),
      ),
    );
  }
}
