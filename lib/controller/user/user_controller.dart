import 'package:academyathlon/data/entity/user/User.dart';

class UserController {
  static User user = User();

  UserController() {
    user.setUsername('bursiyer');
    user.setPassword('123456');
  }

  //UserController().isUserSaved("username", "password");
  bool isUserSaved(String username, String password) {

    if (username == user.getUsername() && password == user.getPassword()) {
      return true;
    } else {
      return false;
    }
  }
}
