import 'package:academyathlon/data/entity/user/User.dart';

class UserController {
  static User user = User();

  UserController() {
    user.setId(1);
    user.setUsername('bursiyer@gmail.com');
    user.setPassword('bursiyer1');
  }

  //UserController().login("username", "password");
  User? login(String username, String password) {
    if (username == user.getUsername() && password == user.getPassword()) {
      return user;
    } else {
      return null;
    }
  }
}
