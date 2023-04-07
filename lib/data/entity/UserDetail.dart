import 'dart:typed_data';

import 'package:academyathlon/data/GeneralFields.dart';

class UserDetail extends GeneralFields {
  int? _id;
  int? _userId;
  String? _name;
  String? _surname;
  String? _descreption;
  ByteData? _photo;
  String? _email;
  String? _phone;

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

  String getName() {
    return _name!;
  }

  void setName(String name) {
    this._name = name;
  }

  String getSurname() {
    return _surname!;
  }

  void setSurname(String surname) {
    this._surname = surname;
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

  String getEmail() {
    return _email!;
  }

  void setEmail(String email) {
    this._email = email;
  }

  String gePhone() {
    return _phone!;
  }

  void setPhone(String phone) {
    this._phone = phone;
  }
}
