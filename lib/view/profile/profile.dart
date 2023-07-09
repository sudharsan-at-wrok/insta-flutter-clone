import 'package:demo/view/profile/post_views.dart';
import 'package:demo/view/profile/profile_bio.dart';
import 'package:demo/view/profile/profile_cta.dart';
import 'package:demo/view/profile/profile_highlights.dart';
import 'package:demo/view/profile/profile_info.dart';
import 'package:demo/view/profile/top_bar.dart';
import 'package:flutter/material.dart';

import '../../controller/backend/profile/get_user.dart';
import '../../model/user_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserProfileModel userProfileInfo = getUser();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(
              userPorifleName: userProfileInfo.userUniqueId,
            ),
            ProfileInfo(
              post: userProfileInfo.userPosts.length,
              followers: userProfileInfo.userFollowers.length,
              following: userProfileInfo.userFollowing.length,
            ),
            ProfileBio(userBio: userProfileInfo.userBio),
            const ProfileCTA(),
            const ProfileHighlights(),
            PostViews(
              postLink: userProfileInfo.userPosts,
              postTagged: userProfileInfo.userTagged,
            ),
          ],
        ),
      ),
    );
  }
}
