import 'package:academyathlon/data/GeneralFields.dart';

/// @authors MrBigBear
class Commend extends GeneralFields {
  int? _id;
  int? _userId;
  int? _postId;
  String? _content;
  bool? _isPinned;

  int? getId() {
    return _id;
  }

  void setId(int id) {
    this._id = id;
  }

  int? getUserId() {
    return _userId;
  }

  void setUserId(int userId) {
    this._userId = userId;
  }

  int? getPostId() {
    return _postId;
  }

  void setPostId(int _postId) {
    this._postId = _postId;
  }

  String? getContent() {
    return _content;
  }

  void setContent(String _content) {
    this._content = _content;
  }

  bool? isPinned() {
    return _isPinned;
  }

  void setIsPinned(bool isPinned) {
    this._isPinned = isPinned;
  }
}
