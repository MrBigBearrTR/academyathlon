
import 'package:academyathlon/data/enum/ELinksType.dart';

/// @authors MrBigBear
extension ExLinksType on ELinksType {

  String get stringDefination {

    switch (this) {

      case ELinksType.linkedin:
        return "LinkedIn";

      case ELinksType.instagram:
        return "Instagram";

      case ELinksType.twitter:
        return "Twitter";

      case ELinksType.youtube:
        return "YouTube";

      case ELinksType.personelPage:
        return "Kişisel Sayfa";

    }
  }
}