import 'dart:math';

import 'package:flutter/material.dart';

import '../../data/entity/post/Post.dart';

class PostCard extends StatefulWidget {
  final Post post;

  const PostCard({required this.post});

  @override
  _PostCardState createState() => _PostCardState(post);
}

class _PostCardState extends State<PostCard> {
  bool _isLiked = false;
  int _likeCount = Random().nextInt(500);
  bool _isSaved = false;
  final Post post;

  _PostCardState(this.post);

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
      _likeCount += _isLiked ? 1 : -1;
    });
  }

  void _toggleSave() {
    setState(() {
      _isSaved = !_isSaved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profil.png"),
                ),
                title:
                Text(post.getTitle() ?? "",
                    style:  TextStyle(
                      color: Colors.white,
                    ),
                ),

              ),
              Text(post.getDescreption() ?? "",
                style:  TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),


              ),



              Image.asset("assets/images/postImage.png", width: 6000, height: 200,),


              Row(

                mainAxisAlignment: MainAxisAlignment.start,


                children: [
                  IconButton(
                    icon: Icon(
                      _isLiked ? Icons.favorite : Icons.favorite_border_sharp,
                      color: Colors.red.shade800,
                      size: 40,
                    ),
                    onPressed: _toggleLike,
                  ),
                  Text('$_likeCount' ,
                    style: TextStyle(
                        fontWeight:FontWeight.w900,
                            color : Colors.white,
                    ),
                  ),

                ],
              ),




            ],
          ),

          Positioned(
            bottom: 0.0,
            right: 8.0,
            child: IconButton(
              icon: Icon(
                _isSaved ? Icons.bookmark : Icons.bookmark_border,
                color: Colors.white,
                size: 40,
              ),
              onPressed: _toggleSave,
            ),
          ),
        ],
      ),
    );
  }
}
