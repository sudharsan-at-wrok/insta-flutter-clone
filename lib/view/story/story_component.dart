import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo/view/story/build_bottom.dart';
import 'package:demo/view/story/story_appbar.dart';
import 'package:flutter/material.dart';

class StoryComponent extends StatelessWidget {
  const StoryComponent({
    super.key,
    required this.storyProfile,
    required this.storyTiming,
    required this.storyUserName,
    required this.storyImage,
  });

  final String storyProfile, storyTiming, storyUserName, storyImage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            StoryTop(
              storyUserName: storyUserName,
              storyProfile: storyProfile,
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 100,
                  ),
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        storyImage,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: Text(
                    storyUserName,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: -1,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: const BottomCTA(),
            ),
          ],
        ),
      ),
    );
  }
}
