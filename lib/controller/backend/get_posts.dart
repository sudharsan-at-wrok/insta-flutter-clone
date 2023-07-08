import '../../model/post_models.dart';

final List<String> userProfile = [
  'https://idsb.tmgrup.com.tr/ly/uploads/images/2022/12/19/247181.jpg',
  'https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=original',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Neymar_%28cropped%29.jpg/255px-Neymar_%28cropped%29.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Sundar_Pichai_%282023%29_cropped.jpg/330px-Sundar_Pichai_%282023%29_cropped.jpg',
  'https://i0.wp.com/cricketaddictor.com/wp-content/uploads/2023/05/86859867.jpg',
  'https://hips.hearstapps.com/hmg-prod/images/gettyimages-1229892983-square.jpg',
  'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/05/24/685839-virat-kohli-reuters.jpg',
  'https://assets.telegraphindia.com/telegraph/2023/Apr/1682317246_1.jpg',
  'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202209/RTS2KXNS_1200x768.png',
  'https://static.toiimg.com/photo/msid-93152424/93152424.jpg',
];

final List<String> userName = [
  'Leo Messi',
  'Cristiano Ronaldo',
  'Neymar Jr',
  'Sundar Pichai',
  'MS Dhoni',
  'Elon Musk',
  'Virat kohli',
  'Sachin Tendulkar',
  'Chris Gayle',
  'Abdul Kalam',
];

final List<String> userLocation = [
  'Los Angeles',
  'Portugal',
  'Brazil',
  'Los Angles',
  'India',
  'America',
  'India',
  'India',
  'West Indies',
  'India'
];

final List<String> userPostLink = [
  'https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1206x513:1208x511)/origin-imgresizer.eurosport.com/2023/02/27/3586243-73034028-2560-1440.jpg',
  'https://www.planetsport.com/image-library/square/1200/c/cristiano-ronaldo-portugal-5-june-2022.jpg',
  'https://media.cnn.com/api/v1/images/stellar/prod/230628043153-01-neymar-jr-brazil-112422.jpg',
  'https://im.indiatimes.in/content/2022/Sep/sundar-pichai-hints-at-layoff_63198c5aefe3d.jpg',
  'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202307/pti04_17_2023_000305a_0-sixteen_nine.jpg',
  'https://images-prod.dazeddigital.com/900/azure/dazed-prod/1340/4/1344788.jpg',
  'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/08/22/721403-virat-kohli-century-reuters.jpg',
  'https://www.jagranimages.com/images/newimg/23042023/23_04_2023-sachin_world_cup_trophy_23393532.webp',
  'https://i0.wp.com/cricketaddictor.com/wp-content/uploads/2021/06/Chris-Gayle-8.jpg',
  'https://images.hindustantimes.com/img/2022/10/15/550x309/apj_abdul_kalam_birth_anniversary_wishes_2022_1665813409136_1665813451143_1665813451143.jpg',
];

final List<String> userPostDescription = [
  'In the greatest final of them all, Messi had to help win it three times. He scored the opener and helped set up the second before Kylian Mbappe levelled it',
  'Cristiano Ronaldo was born 5 February 1985 is a Portuguese professional footballer who plays as a forward for and captains both Saudi Professional League club Al Nassr and the Portugal national team',
  "Brother... it didn't turn out as we thought but we tried everything. It was a pleasure to share 2 more years with you. Good luck in your new stage and be happy. I love you ❤️ #leomessi, Neymar wrote on Twitter",
  "During an informal conversation with popular YouTuber Arun Maini, also known as Mrwhosetheboss, Google CEO Sundar Pichai delved into a candid discussion about the future of artificial intelligence (AI) and its impact on smartphones",
  'As captain, MSD has played in 10 IPL finals (all for CSK) and also played the 2017 final for Rising Pune Supergiant. In fact, as of IPL 2023, Dhoni has played in an impressive ten IPL finals and won five',
  'Entrepreneur Elon Musk has achieved global fame as the chief executive officer (CEO) of electric automobile maker Tesla Inc. (TSLA) and the private space company SpaceX.',
  'Virat Kohli is an Indian cricketer. A right-handed top order batsman, he has made 75 centuries in international cricket — 28 in Test cricket, 46 in One Day Internationals (ODIs) and 1 in Twenty20 Internationals (T20Is) As of May 2023.',
  "Throughout Sachin Tendulkar's illustrious cricket career, he faced some of the most formidable bowlers in the world. Among them, Australia's Brett Lee stands out as the spearhead who dismissed Tendulkar a remarkable 14 times. Not far behind is the legendary Muthiah Muralitharan who dismissed Tendulkar 13 times",
  'The “Universe Boss,” Chris Gayle, has hit the most sixes across all formats. He hit 553 sixes in 483 international matches: 331 in ODIs, 124 in T20Is, and 98 in Tests',
  'Failure will never overtake me if my determination to succeed is strong enough',
];

final List<int> userComments = [
  29000,
  30000,
  28000,
  5000,
  20000,
  18000,
  27000,
  23000,
  20000,
  27000,
];

final List<int> userPostTimings = [
  15,
  18,
  12,
  2,
  1,
  4,
  5,
  6,
  7,
  30,
];

final List<int> userPostLikes = [
  100000,
  120000,
  90000,
  15000,
  16000,
  17000,
  99099,
  15000,
  30000,
  40000,
];

List<PostModel> getPosts() {
  List<PostModel> postResponse = [];

  for (int i = 0; i < userName.length; i++) {
    postResponse.add(
      PostModel(
        postUserProfileImage: userProfile[i],
        postProfileName: userName[i],
        postLocation: userLocation[i],
        postImage: userPostLink[i],
        postDescription: userPostDescription[i],
        postComments: userComments[i],
        postTimings: userPostTimings[i],
        postLikes: userPostLikes[i],
      ),
    );
  }

  //
  return postResponse;
}
