import 'package:demo/model/post_models.dart';

class UserProfileModel {
  final String userUniqueId, userProfileImg, userBio;
  final bool isPrivate;
  final List<String> userFollowers, userFollowing;
  final List<PostModel> userPosts, userTagged, userSaved;

  UserProfileModel({
    required this.userUniqueId,
    required this.userProfileImg,
    required this.userFollowers,
    required this.userFollowing,
    required this.userBio,
    required this.userPosts,
    required this.userTagged,
    required this.userSaved,
    required this.isPrivate,
  });
}
