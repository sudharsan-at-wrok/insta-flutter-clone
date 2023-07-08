import 'package:demo/model/story_model.dart';

final List<String> userNames = [
  "Leo Messi",
  "Cristanio",
  "Neymar Jr",
  "Sunil Chetri",
  "Maradona",
];

final List<String> userProfiles = [
  "https://theindianwire.com/wp-content/uploads/2020/09/5f52050e7ed0ee001e25d726.jpeg",
  "https://upload.wikimedia.org/wikipedia/commons/8/8b/Cristiano_Ronaldo_WC2022_-_01_%28cropped%29.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/6/65/20180610_FIFA_Friendly_Match_Austria_vs._Brazil_Neymar_850_1705.jpg",
  "https://www.thescottishsun.co.uk/wp-content/uploads/sites/2/2018/06/NINTCHDBPICT000410934565.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Maradona-Mundial_86_con_la_copa.JPG/800px-Maradona-Mundial_86_con_la_copa.JPG",
];

final List<String> storyLinks = [
  "",
  "",
  "",
  "",
  "",
];

final List<bool> isSeen = [
  false,
  false,
  false,
  false,
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
