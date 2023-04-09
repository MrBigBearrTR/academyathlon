import 'package:academyathlon/data/entity/post/PostLiker.dart';

class PostLikerController{
  static PostLiker postLiker = PostLiker();

  int getGeneralLikeCountByUserId(int userId){
    return 335;
  }

  bool getLikePostByPostIdAndUserId(int postId,int userId){
    return false;
  }

  bool likePostByPostIdAndUserId(int postId,int userId){
    return true;
  }

  String getLikeCountByPostId(int postId) {
    return "15";
  }

  bool getSavedPostByPostIdAndUserId(int postId,int userId){
    return true;
  }

}