import 'package:academyathlon/pages/post/post_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../controller/post/post_controller.dart';
import '../../utils/general_background.dart';

class PostSavedListPage extends StatelessWidget {
  const PostSavedListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int userId = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kaydettiklerim'),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
            decoration: GeneralBackground().getGeneralMainBackground()),
      ),
      body: Container(
          decoration: GeneralBackground().getGeneralBackground(),
          child: ListView.builder(
            itemBuilder: (context, index) {
              final post =
                  PostController().getPostListForMySavedPosts(userId)[index];
              return ListTile(
                title: PostCard(post: post),
                onTap: () {
                  Navigator.pushNamed(context, "/postCardContext",
                      arguments: post);
                },
              );
            },
            itemCount:
                PostController().getPostListForMySavedPosts(userId).length,
          )),
    );
  }
}
