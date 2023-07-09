import 'package:demo/model/post_models.dart';
import 'package:demo/view/profile/post_grid.dart';
import 'package:demo/view/profile/tag_view.dart';
import 'package:flutter/material.dart';

class PostViews extends StatefulWidget {
  const PostViews({
    super.key,
    required this.postLink,
    required this.postTagged,
  });

  final List<PostModel> postLink, postTagged;

  @override
  State<PostViews> createState() => _PostViewsState();
}

class _PostViewsState extends State<PostViews> with TickerProviderStateMixin {
  late TabController tabController;

  _PostViewsState();

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TabBar(
            splashFactory: NoSplash.splashFactory,
            indicatorColor: Colors.black,
            padding: const EdgeInsets.all(5),
            indicatorWeight: 2,
            labelPadding: const EdgeInsets.all(10),
            labelColor: Colors.black,
            controller: tabController,
            tabs: const [
              Icon(Icons.grid_on_outlined),
              Icon(Icons.person_pin_outlined),
            ],
          ),
          Expanded(
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              controller: tabController,
              children: [
                PostGridView(
                  postLink: widget.postLink,
                ),
                TaggedView(
                  postLinks: widget.postTagged,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
