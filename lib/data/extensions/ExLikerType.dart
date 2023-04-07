
import 'package:academyathlon/data/enum/ELikerType.dart';

extension ExLikerType on ELikerType{

  String get stringDefination {

    switch (this) {

      case ELikerType.LIKE:
        return "Beğen";

      case ELikerType.SAVE:
        return "Kaydet";
    }
  }
}