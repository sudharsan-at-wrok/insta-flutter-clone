import 'package:flutter/material.dart';

class PostCTA extends StatelessWidget {
  const PostCTA({
    super.key,
    required this.postLikes,
  });

  final int postLikes;

  @override
  Widget build(BuildContext context) {
    String likes =
        postLikes > 1000 ? "${postLikes ~/ 1000}K" : postLikes.toString();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const LikeButton(),
                IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: Image.asset(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    height: 22,
                    width: 22,
                    "assets/comment.png",
                  ),
                ),
                IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send_outlined,
                    )),
              ],
            ),
            const SaveButton(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "$likes likes",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class SaveButton extends StatefulWidget {
  const SaveButton({
    super.key,
  });

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

bool isSaved = false;

class _SaveButtonState extends State<SaveButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20,
      onPressed: () {
        setState(() {
          isSaved = !isSaved;
        });
      },
      icon: !isSaved
          ? const Icon(
              Icons.bookmark_outline,
              size: 28,
            )
          : const Icon(
              Icons.bookmark,
              size: 28,
              color: Colors.black,
            ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({
    super.key,
  });

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

bool isLiked = false;

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20,
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      icon: isLiked
          ? const Icon(
              Icons.favorite,
              size: 28,
              color: Colors.red,
            )
          : const Icon(
              Icons.favorite_outline,
              size: 28,
            ),
    );
  }
}
