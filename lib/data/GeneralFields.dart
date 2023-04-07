/// @authors MrBigBear
class GeneralFields {

  bool _isActive = true;
  DateTime? _createDate;
  String? _createUser;
  DateTime? _updateDate;
  String? _updateUser;

  bool isActive() {
    return _isActive;
  }

  void setIsActive(bool isActive) {
    this._isActive = isActive;
  }

  DateTime? getCreateDate() {
    return _createDate;
  }

  void setCreateDate(DateTime createDate) {
    this._createDate = _createDate;
  }

  String? getCreateUser() {
    return _createUser;
  }

  void setCreateUser(String createUser) {
    this._createUser = createUser;
  }

  DateTime? getUpdateDate() {
    return _updateDate;
  }

  void setUpdateDate(DateTime updateDate) {
    this._updateDate = updateDate;
  }

  String? getUpdateUser() {
    return _updateUser;
  }

  void setUpdateUser(String updateUser) {
    this._updateUser = updateUser;
  }

}
