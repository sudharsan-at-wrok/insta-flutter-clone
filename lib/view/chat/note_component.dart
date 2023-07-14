import 'package:flutter/material.dart';

class NoteComponent extends StatelessWidget {
  const NoteComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 30),
        height: 80,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                        right: 5,
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: const Text(
                          "Hello Bro",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "data",
                  style: TextStyle(color: Colors.black),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
