import 'package:demo/model/story_model.dart';

final List<String> userNames = [
  "leo.messi",
  "cristiano.ronaldo",
  "neymar_official",
  "sunil.india",
  "maradona.arg",
];

final List<String> userProfiles = [
  "https://theindianwire.com/wp-content/uploads/2020/09/5f52050e7ed0ee001e25d726.jpeg",
  "https://upload.wikimedia.org/wikipedia/commons/8/8b/Cristiano_Ronaldo_WC2022_-_01_%28cropped%29.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/6/65/20180610_FIFA_Friendly_Match_Austria_vs._Brazil_Neymar_850_1705.jpg",
  "https://www.thescottishsun.co.uk/wp-content/uploads/sites/2/2018/06/NINTCHDBPICT000410934565.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Maradona-Mundial_86_con_la_copa.JPG/800px-Maradona-Mundial_86_con_la_copa.JPG",
];

final List<String> storyLinks = [
  "https://a57.foxsports.com/statics.foxsports.com/www.foxsports.com/content/uploads/2023/06/1280/1280/3a118568-messi1.jpg",
  "https://imageio.forbes.com/specials-images/imageserve/649deb04a1d2385ef66aa4a7/0x0.jpg",
  "https://imageio.forbes.com/specials-images/imageserve/64a2282f8915731ce78aa486/Brazil-v-Colombia/960x0.jpg",
  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8c9cbd6622e0dc09/6397332753152407ace5a11d/Sunil_Chhetri.jpg",
  "https://cdn.britannica.com/76/124976-050-E03E50CE/Diego-Maradona-1986.jpg",
];

final List<bool> isSeen = [
  false,
  false,
  false,
  true,
  false,
];

//
List<StoryModel> getStories() {
  List<StoryModel> returnResponse = [];

  for (int i = 0; i < userNames.length; i++) {
    returnResponse.add(
      StoryModel(
        storyUserName: userNames[i],
        storyUserProfile: userProfiles[i],
        storyLink: storyLinks[i],
        storyIsSeen: isSeen[i],
      ),
    );
  }
  //
  return returnResponse;
}
