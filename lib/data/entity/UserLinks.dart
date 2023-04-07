import 'package:academyathlon/data/GeneralFields.dart';
import 'package:academyathlon/data/enum/ELinksType.dart';

class UserLinks extends GeneralFields {
  int? _id;
  int? _userDetailId;
  ELinksType? _eLinksType;
  String? _link;

  int getId() {
    return _id!;
  }

  void setId(int id) {
    this._id = id;
  }

  int getUserDetailId() {
    return _userDetailId!;
  }

  void setUserDetailId(int userDetailId) {
    this._userDetailId = userDetailId;
  }

  ELinksType getELinksType() {
    return _eLinksType!;
  }

  void setELinksType(ELinksType eLinksType) {
    this._eLinksType = eLinksType;
  }

  String getLink() {
    return _link!;
  }

  void setLink(String link) {
    this._link = link;
  }
}
