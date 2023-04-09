import 'dart:math';

import 'package:academyathlon/data/entity/post/PostLiker.dart';

class PostLikerController{
  static PostLiker postLiker = PostLiker();

  int getGeneralLikeCountByUserId(int userId){
    return Random().nextInt(500);
  }

  bool getLikePostByPostIdAndUserId(int postId,int userId){
    return false;
  }

  bool likePostByPostIdAndUserId(int postId,int userId){
    return true;
  }

  String getLikeCountByPostId(int postId) {
    return "${Random().nextInt(120)}";
  }

  bool getSavedPostByPostIdAndUserId(int postId,int userId){
    return true;
  }

}