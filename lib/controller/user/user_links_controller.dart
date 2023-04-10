import 'package:academyathlon/data/enum/ELinksType.dart';

import '../../data/entity/user/UserLinks.dart';

class UserLinksController {
  static UserLinks userLinks = UserLinks();

  //UserDetailController().getUserDetailByUserId(1);
  UserLinks? getUserLinksByUserIdAndLinksType(
      int userId, ELinksType eLinksType) {
    userLinks = UserLinks();
    userLinks.setId(1);
    userLinks.setELinksType(eLinksType);
    switch (eLinksType) {
      case ELinksType.linkedin:
        userLinks.setLink("https://www.linkedin.com/in/bursiyer/");
        break;
      case ELinksType.github:
        userLinks.setLink("https://github.com/bursiyer/");
        break;
      default:
        userLinks.setLink("https://www.bursiyer.com/");
        break;
    }

    return userLinks;
  }
}
