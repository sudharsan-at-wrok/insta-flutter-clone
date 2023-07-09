import 'package:demo/model/post_models.dart';

final List<String> postLinks = [
  'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iG72lRc8yQWI/v1/1200x-1.jpg',
  'https://images2.minutemediacdn.com/image/fetch/https%3A%2F%2Ftherealchamps.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2017%2F07%2F947096288.jpeg',
  'https://images.immediate.co.uk/production/volatile/sites/4/2021/08/mountains-7ddde89.jpg',
  'https://cdn.britannica.com/30/128430-050-D6578398/Boston-Public-Garden.jpg',
  'https://www.shihoriobata.com/wp-content/uploads/2020/07/you-are-your-home-878x1024.jpg',
  'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202307/pti05_20_2023_000348a-sixteen_nine.jpg',
];

List<PostModel> getUserPosts() {
  final List<PostModel> uPost = [];

  PostModel(
    postUserProfileImage: postUserProfileImage,
    postProfileName: postProfileName,
    postLocation: postLocation,
    postImage: postImage,
    postDescription: postDescription,
    postComments: postComments,
    postTimings: postTimings,
    postLikes: postLikes,
  );

  return uPost;
}
