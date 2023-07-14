import 'package:demo/model/follower_model.dart';

final List<String> userName = [
  "mitun_20",
  "ram_1024",
  "mr_x.12",
  "dream_rider.1024",
  "sibbi_102.sparks",
  "r1x__.",
  "rahul_g.official",
  "dhoni.fc",
  "ipl.reels@10",
];

final List<String> userProfile = [
  "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/Zugpsitze_mountain.jpg",
  'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/05/24/685839-virat-kohli-reuters.jpg',
  'https://assets.telegraphindia.com/telegraph/2023/Apr/1682317246_1.jpg',
  'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202209/RTS2KXNS_1200x768.png',
  'https://static.toiimg.com/photo/msid-93152424/93152424.jpg',
  'https://i0.wp.com/cricketaddictor.com/wp-content/uploads/2023/05/86859867.jpg',
  'https://hips.hearstapps.com/hmg-prod/images/gettyimages-1229892983-square.jpg',
  'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/05/24/685839-virat-kohli-reuters.jpg',
  'https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=original',
];

final List<bool> isFollowing = [
  false,
  true,
  false,
  true,
  true,
  false,
  true,
  true,
  true,
];

List<FollowersModel> getNotification() {
  List<FollowersModel> notificationList = [];
  for (int i = 0; i < userName.length; i++) {
    notificationList.add(
      FollowersModel(
        followerProfileImage: userProfile[i],
        followerUserName: userName[i],
        isFollowing: isFollowing[i],
      ),
    );
  }
  return notificationList;
}
