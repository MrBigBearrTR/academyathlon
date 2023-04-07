import 'package:academyathlon/data/enum/ESubjectType.dart';

/// @authors MrBigBear
extension ExSubjectType on ESubjectType{

  String get stringDefination {

    switch (this) {

      case ESubjectType.SUBJECT:
        return "Konu";

      case ESubjectType.TITLE:
        return "Başlık";
    }
  }
}