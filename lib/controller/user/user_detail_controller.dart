import '../../data/entity/user/UserDetail.dart';

class UserDetailController {
  static UserDetail userDetail = UserDetail();

  //UserDetailController().getUserDetailByUserId(1);
  UserDetail getUserDetailByUserId(int userId) {
    userDetail = UserDetail();
    userDetail.setId(1);
    userDetail.setUserId(1);
    userDetail.setName("Akademi");
    userDetail.setSurname("Bursiyeri");
    userDetail.setDescreption(
        "2022 Akademi Bursiyeriyim. Başarılarımın devamını diliyorum.");
    userDetail.setEmail("bursiyer@gmail.com");
    userDetail.setPhone("5554445566");

    return userDetail;
  }
}
