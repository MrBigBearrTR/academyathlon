import 'package:academyathlon/data/GeneralFields.dart';

/// @authors MrBigBear
class User extends GeneralFields {
  int? _id;
  String? _username;
  String? _password;

  int? getId() {
    return _id;
  }

  void setId(int id) {
    this._id = id;
  }

  String? getUsername() {
    return _username;
  }

  void setUsername(String username) {
    this._username = username;
  }

  String? getPassword() {
    return this._password;
  }

  void setPassword(String password) {
    this._password = password;
  }
}