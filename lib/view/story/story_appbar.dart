import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class StoryTop extends StatelessWidget {
  const StoryTop({
    super.key,
    required this.storyUserName,
    required this.storyProfile,
  });

  final String storyUserName;
  final String storyProfile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LinearProgressIndicator(
          valueColor: AlwaysStoppedAnimation(
            Colors.white,
          ),
          color: Colors.grey,
          value: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white12,
                    backgroundImage: CachedNetworkImageProvider(storyProfile),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: storyUserName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          const TextSpan(
                            text: "   9 h",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  splashRadius: 10,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  splashRadius: 10,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
