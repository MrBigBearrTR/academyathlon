
import 'package:academyathlon/data/enum/ELikerType.dart';

/// @authors MrBigBear
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