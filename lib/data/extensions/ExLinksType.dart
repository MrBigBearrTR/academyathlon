
import 'package:academyathlon/data/enum/ELinksType.dart';

extension ExLinksType on ELinksType {

  String get stringDefination {

    switch (this) {

      case ELinksType.LINKEDLN:
        return "Linkedln";

      case ELinksType.INSTAGRAM:
        return "Instagram";

      case ELinksType.TWITTER:
        return "Twitter";

      case ELinksType.YOUTUBE:
        return "YouTube";

      case ELinksType.PERSONEL_PAGE:
        return "Kişisel Sayfa";

    }
  }
}