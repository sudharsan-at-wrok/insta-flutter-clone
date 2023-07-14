import 'package:demo/view/chat/message_holder.dart';
import 'package:demo/view/chat/note_component.dart';
import 'package:demo/view/chat/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:demo/view/profile/top_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: TopBar(
                userPorifleName: "mitun_20",
              ),
            ),
            SearchBarComponent(),
            NoteComponent(),
            MessageHolderComponent(),
          ],
        ),
      ),
    );
  }
}
