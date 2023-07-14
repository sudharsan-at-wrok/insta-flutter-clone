import 'package:demo/controller/backend/home/get_posts.dart';
import 'package:demo/controller/backend/home/get_stories.dart';
import 'package:demo/model/post_models.dart';
import 'package:demo/model/story_model.dart';
import 'package:demo/view/chat/chat.dart';
import 'package:demo/view/home/post_component.dart';
import 'package:demo/view/home/story_component.dart';
import 'package:demo/view/notifications/notifications.dart';
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
      bottomNavigationBar: buildNavBar(),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              floating: true,
              backgroundColor: Colors.white,
              elevation: 1,
              leading: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                  ),
                  IconButton(
                    splashRadius: 10,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              leadingWidth: MediaQuery.of(context).size.width / 2,
              actions: [
                Stack(
                  children: [
                    IconButton(
                      splashRadius: 10,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationScreen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: Colors.black,
                      ),
                    ),
                    const Positioned(
                      top: 12,
                      right: 10,
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.pink,
                      ),
                    )
                  ],
                ),
                IconButton(
                  splashRadius: 10,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ));
                  },
                  icon: Image.asset(
                    height: 22,
                    "assets/comment.png",
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: StoryComponent(
                storyResponse: apiStories,
              ),
            ),
            SliverList.builder(
              itemCount: apiPosts.length,
              itemBuilder: (context, index) {
                return PostComponent(
                  postData: apiPosts[index],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
