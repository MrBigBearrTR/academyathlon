import 'package:academyathlon/controller/commend/commend_controller.dart';
import 'package:academyathlon/data/entity/post/Post.dart';
import 'package:academyathlon/pages/post/post_card.dart';
import 'package:academyathlon/pages/post/post_commend.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCardContextPage extends StatelessWidget {
  const PostCardContextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Post post = ModalRoute.of(context)!.settings.arguments as Post;
    return Scaffold(
        appBar: AppBar(
          title: Text('${post.getTitle()}'),
        ),
        body: SingleChildScrollView(
          child: Wrap(
            children: [
              PostCard(post: post),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final commend = CommendController()
                        .getPostCommendList(post.getId() ?? 0)[index];
                    return Wrap(children: [
                      ListTile(title: PostCommend(commend: commend))
                    ]);
                  },
                  itemCount: CommendController()
                      .getPostCommendList(post.getId() ?? 0)
                      .length,
                ),
              ),
            ],
          ),
        ));
  }
}
