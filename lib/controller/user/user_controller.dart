import 'package:academyathlon/data/entity/user/User.dart';

class UserController {
  static User user = User();

  UserController() {
    user.setId(1);
    user.setUsername('1');
    user.setPassword('1');
  }

  //UserController().isUserSaved("username", "password");
  User? login(String username, String password) {

    if (username == user.getUsername() && password == user.getPassword()) {
      return user;
    } else {
      return null;
    }
  }
}
