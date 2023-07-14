import 'package:flutter/material.dart';

import '../widgets/like_button.dart';

class BottomCTA extends StatelessWidget {
  const BottomCTA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                left: 10,
              ),
              padding: const EdgeInsets.only(
                left: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
                border: Border.all(
                  color: Colors.black12,
                  width: 2,
                ),
              ),
              child: const TextField(
                minLines: 1,
                maxLines: null,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Send a message",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Row(
            children: [
              const LikeButton(),
              IconButton(
                splashRadius: 15,
                onPressed: () {},
                icon: const Icon(
                  Icons.send_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
