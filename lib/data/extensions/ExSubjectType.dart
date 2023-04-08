import 'package:academyathlon/data/enum/ESubjectType.dart';

/// @authors MrBigBear
extension ExSubjectType on ESubjectType{

  String get stringDefination {

    switch (this) {

      case ESubjectType.subject:
        return "Konu";

      case ESubjectType.title:
        return "Başlık";
    }
  }
}