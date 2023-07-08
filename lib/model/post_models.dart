class PostModel {
  final String postUserProfileImage,
      postProfileName,
      postLocation,
      postImage,
      postDescription;
  final int postLikes, postComments, postTimings;

  PostModel({
    required this.postUserProfileImage,
    required this.postProfileName,
    required this.postLocation,
    required this.postImage,
    required this.postDescription,
    required this.postComments,
    required this.postTimings,
    required this.postLikes,
  });
}
