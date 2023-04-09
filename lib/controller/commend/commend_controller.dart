import 'package:academyathlon/data/entity/commend/Commend.dart';

class CommendController {
  static List<Commend> _commendList = [];

  CommendController() {
    _commendList = [];

    Commend com1 = Commend();
    com1.setId(1);
    com1.setContent("Çok Başarılı");
    _commendList.add(com1);

    Commend com2 = Commend();
    com2.setId(2);
    com2.setContent("Faydalı fakat bazı eksiklikleri var.");
    _commendList.add(com2);

    Commend com3 = Commend();
    com3.setId(3);
    com3.setContent("Ben bayıldım");
    _commendList.add(com3);

    Commend com4 = Commend();
    com4.setId(4);
    com4.setContent(
        "Hocam bu örnekte son sıradaki işlemin mantığını anlamadım");
    _commendList.add(com4);

    Commend com5 = Commend();
    com5.setId(5);
    com5.setContent("Bir gün sizin gibi olmak istiyorum");
    _commendList.add(com5);

    Commend com6 = Commend();
    com6.setId(6);
    com6.setContent("Harika bir şey F_17 takımı gibi başarılı bir uygulama.");
    _commendList.add(com6);
  }

  //CommendController().getPostListBySubjectId();
  List<Commend> getPostCommendList(int? postId) {
    if (postId != null) {
      return _commendList;
    } else {
      return [];
    }
  }
}
