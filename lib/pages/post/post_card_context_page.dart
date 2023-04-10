import 'package:academyathlon/controller/commend/commend_controller.dart';
import 'package:academyathlon/controller/post/post_controller.dart';
import 'package:academyathlon/data/entity/post/Post.dart';
import 'package:academyathlon/pages/post/post_card.dart';
import 'package:academyathlon/pages/post/post_commend.dart';
import 'package:flutter/material.dart';

import '../../utils/general_background.dart';

class PostCardContextPage extends StatelessWidget {
  const PostCardContextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Post post = ModalRoute.of(context)!.settings.arguments as Post;
    return Scaffold(
        appBar: AppBar(
          title: Text('${post.getTitle()}'),
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
              decoration: GeneralBackground().getGeneralMainBackground()),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: GeneralBackground().getGeneralBackground(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  PostCard(post: post),
                  SizedBox(
                    //height: MediaQuery.of(context).size.height/3 ,
                    child: ListView.builder(
                      shrinkWrap: true,
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
            )));
  }
}
