import 'package:academyathlon/data/enum/ESubjectType.dart';

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