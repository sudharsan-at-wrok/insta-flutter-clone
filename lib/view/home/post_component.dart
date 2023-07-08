import 'package:demo/model/post_models.dart';
import 'package:demo/view/home/post_comment.dart';
import 'package:demo/view/home/post_cta.dart';
import 'package:demo/view/home/post_imagecomponent.dart';
import 'package:demo/view/home/post_description.dart';
import 'package:demo/view/home/post_usercomponent.dart';
import 'package:flutter/material.dart';

class PostComponent extends StatelessWidget {
  const PostComponent({
    super.key,
    required this.postData,
  });

  final PostModel postData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          PostInfoComponent(
            profileImg: postData.postUserProfileImage,
            profileLocation: postData.postLocation,
            profileUserName: postData.postProfileName,
          ),
          PostImage(
            postLink: postData.postImage,
          ),
          PostCTA(
            postLikes: postData.postLikes,
          ),
          PostDescription(
            userName: postData.postProfileName,
            postDescription: postData.postDescription,
          ),
          PostComment(
            postComment: postData.postComments,
          )
        ],
      ),
    );
  }
}
