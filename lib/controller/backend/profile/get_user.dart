import 'package:demo/controller/backend/profile/get_uposts.dart';
import 'package:demo/model/post_models.dart';
import 'package:demo/model/user_model.dart';

UserProfileModel getUser() {
  final List<PostModel> posts = getUserPosts();
  return UserProfileModel(
    userProfileImg: "",
    userFollowers: [],
    userFollowing: [],
    userBio:
        "Sudharson\nFirst Cry on 15.08.2003\nLife is your creation\nEx-ceoian\npsna",
    userPosts: posts,
    userTagged: posts,
    userSaved: [],
    isPrivate: false,
    userUniqueId: 'mr.dyinao',
  );
}
