import 'package:flutter/material.dart';

class ProfileHighlights extends StatelessWidget {
  const ProfileHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      tilePadding: EdgeInsets.only(left: 12),
      childrenPadding: EdgeInsets.only(
        bottom: 10,
      ),
      clipBehavior: Clip.antiAlias,
      iconColor: Colors.black,
      collapsedIconColor: Colors.black,
      title: Text(
        "Story Highlights",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, left: 12),
              child: Text(
                "Keep your favourite stories on profile",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            StoryHighlights(),
          ],
        )
      ],
    );
  }
}

class StoryHighlights extends StatelessWidget {
  const StoryHighlights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return index != 0
              ? Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  child: const CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 30,
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.5,
                      color: Colors.black,
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 3,
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                );
        },
      ),
    );
  }
}
