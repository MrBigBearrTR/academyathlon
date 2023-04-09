import 'package:academyathlon/controller/post/post_controller.dart';
import 'package:academyathlon/pages/post/post_card.dart';
import 'package:flutter/material.dart';

import '../../data/entity/subject/Subject.dart';

class PostListPage extends StatelessWidget {
  const PostListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Subject mainSubject = ModalRoute.of(context)!.settings.arguments as Subject;
    return Scaffold(
        appBar: AppBar(
          title: Text('${mainSubject.getName()}'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final post = PostController()
                .getPostListBySubjectId(mainSubject.getId() ?? 0)[index];
            return ListTile(
              title: PostCard(post: post),
              onTap: () {
                Navigator.pushNamed(context, "/postCardContext",
                    arguments: post);
              },
            );
          },
          itemCount: PostController()
              .getPostListBySubjectId(mainSubject.getId() ?? 0)
              .length,
        ));
  }
}
