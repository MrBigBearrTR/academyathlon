import 'dart:typed_data';

import 'package:academyathlon/data/GeneralFields.dart';

class Post extends GeneralFields {
  int? _id;
  int? _userId;
  int? _subjectId;
  String? _title;
  String? _descreption;
  ByteData? _photo;
  String? _context;
  bool? _isPinned;

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

  int getSubjectId() {
    return _subjectId!;
  }

  void setSubjectId(int subjectId) {
    this._subjectId = subjectId;
  }

  String getTitle() {
    return _title!;
  }

  void setTitle(String _title) {
    this._title = _title;
  }

  String getDescreption() {
    return _descreption!;
  }

  void setDescreption(String descreption) {
    this._descreption = descreption;
  }

  ByteData getPhoto() {
    return _photo!;
  }

  void setPhoto(ByteData photo) {
    this._photo = photo;
  }

  String geContext() {
    return _context!;
  }

  void setContext(String context) {
    this._context = context;
  }

  bool isPinned() {
    return _isPinned!;
  }

  void setIsPinned(bool isPinned) {
    this._isPinned = isPinned;
  }
}
