import 'package:flutter/material.dart';

class MessageHolderComponent extends StatelessWidget {
  const MessageHolderComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        childAspectRatio: 5,
      ),
      itemBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage(
                      "assets/profile.png",
                    ),
                    radius: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wasted",
                          style: TextStyle(
                            fontSize: 15,
                            wordSpacing: -1,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "17+ new messages",
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: -1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.blueAccent,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Icon(Icons.photo_camera),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
