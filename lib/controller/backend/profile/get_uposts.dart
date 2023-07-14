import 'package:demo/model/post_models.dart';

final List<String> postLinks = [
  'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iG72lRc8yQWI/v1/1200x-1.jpg',
  'https://images2.minutemediacdn.com/image/fetch/https%3A%2F%2Ftherealchamps.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2017%2F07%2F947096288.jpeg',
  'https://images.immediate.co.uk/production/volatile/sites/4/2021/08/mountains-7ddde89.jpg',
  'https://cdn.britannica.com/30/128430-050-D6578398/Boston-Public-Garden.jpg',
  'https://www.shihoriobata.com/wp-content/uploads/2020/07/you-are-your-home-878x1024.jpg',
  'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202307/pti05_20_2023_000348a-sixteen_nine.jpg',
];

final List<String> postDescription = [
  'In the greatest final of them all, Messi had to help win it three times. He scored the opener and helped set up the second before Kylian Mbappe levelled it',
  'Cristiano Ronaldo was born 5 February 1985 is a Portuguese professional footballer who plays as a forward for and captains both Saudi Professional League club Al Nassr and the Portugal national team',
  "Brother... it didn't turn out as we thought but we tried everything. It was a pleasure to share 2 more years with you. Good luck in your new stage and be happy. I love you ❤️ #leomessi, Neymar wrote on Twitter",
  "During an informal conversation with popular YouTuber Arun Maini, also known as Mrwhosetheboss, Google CEO Sundar Pichai delved into a candid discussion about the future of artificial intelligence (AI) and its impact on smartphones",
  'As captain, MSD has played in 10 IPL finals (all for CSK) and also played the 2017 final for Rising Pune Supergiant. In fact, as of IPL 2023, Dhoni has played in an impressive ten IPL finals and won five',
  'Entrepreneur Elon Musk has achieved global fame as the chief executive officer (CEO) of electric automobile maker Tesla Inc. (TSLA) and the private space company SpaceX.',
];

final List<String> profileNames = [
  'Leo Messi',
  'Cristiano Ronaldo',
  'Neymar Jr',
  'Sundar Pichai',
  'MS Dhoni',
  'Elon Musk',
];

final List<String> postlocation = [
  'Los Angeles',
  'Portugal',
  'Brazil',
  'Los Angles',
  'India',
  'America',
];

final List<String> postImages = [
  'https://idsb.tmgrup.com.tr/ly/uploads/images/2022/12/19/247181.jpg',
  'https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=original',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Neymar_%28cropped%29.jpg/255px-Neymar_%28cropped%29.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Sundar_Pichai_%282023%29_cropped.jpg/330px-Sundar_Pichai_%282023%29_cropped.jpg',
  'https://i0.wp.com/cricketaddictor.com/wp-content/uploads/2023/05/86859867.jpg',
  'https://hips.hearstapps.com/hmg-prod/images/gettyimages-1229892983-square.jpg',
];

final List<int> postComments = [
  30000,
  28000,
  5000,
  20000,
  18000,
  27000,
];

final List<int> postTimings = [
  15,
  18,
  12,
  2,
  1,
  4,
];

final List<int> postLikes = [
  100000,
  120000,
  90000,
  15000,
  16000,
  17000,
];

List<PostModel> getUserPosts() {
  final List<PostModel> uPost = [];

  for (int i = 0; i < postLinks.length; i++) {
    uPost.add(
      PostModel(
        postUserProfileImage: postImages[i],
        postProfileName: profileNames[i],
        postLocation: postlocation[i],
        postImage: postLinks[i],
        postDescription: postDescription[i],
        postComments: postComments[i],
        postTimings: postTimings[i],
        postLikes: postLikes[i],
      ),
    );
  }
  return uPost;
}
