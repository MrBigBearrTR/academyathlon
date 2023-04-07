
import 'package:academyathlon/data/enum/ELikerType.dart';

/// @authors MrBigBear
extension ExLikerType on ELikerType{

  String get stringDefination {

    switch (this) {

      case ELikerType.like:
        return "Beğen";

      case ELikerType.save:
        return "Kaydet";
    }
  }
}