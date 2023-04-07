import 'package:academyathlon/data/GeneralFields.dart';
import 'package:academyathlon/data/enum/ELikerType.dart';

/// @authors MrBigBear
class PostLiker extends GeneralFields {
  int? _id;
  int? _userId;
  int? _postId;
  ELikerType? _eLikerType;

  int getId() {
    return _id!;
  }

  void setId(int id) {
    this._id = id;
  }

  int getUserId() {
    return _userId!;
  }

  void setUserId(int userId) {
    this._userId = userId;
  }

  int getPostId() {
    return _postId!;
  }

  void setPostId(int _postId) {
    this._postId = _postId;
  }

  ELikerType getELikerType() {
    return _eLikerType!;
  }

  void setELikerType(ELikerType eLikerType) {
    this._eLikerType = eLikerType;
  }
}
