import 'package:academyathlon/data/GeneralFields.dart';
import 'package:academyathlon/data/enum/ESubjectType.dart';

/// @authors MrBigBear
class Subject extends GeneralFields {
  int? _id;
  String? _name;
  ESubjectType? _eSubjectType;
  int? _dependedSubject;
  bool? _isPinned;

  int getId() {
    return _id!;
  }

  void setId(int id) {
    this._id = id;
  }

  String getName() {
    return _name!;
  }

  void setName(String name) {
    this._name = name;
  }

  ESubjectType getESubjectType() {
    return _eSubjectType!;
  }

  void setESubjectType(ESubjectType eSubjectType) {
    this._eSubjectType = eSubjectType;
  }

  int getDependedSubject() {
    return _dependedSubject!;
  }

  void setDependedSubject(int dependedSubject) {
    this._dependedSubject = dependedSubject;
  }

  bool isPinned() {
    return _isPinned!;
  }

  void setIsPinned(bool isPinned) {
    this._isPinned = isPinned;
  }
}
