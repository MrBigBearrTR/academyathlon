import 'package:academyathlon/data/entity/post/Post.dart';

class PostController {
  static List<Post> _postDartList = [];

  PostController() {
    _postDartList = [];

    Post sub1 = Post();
    sub1.setId(1);
    sub1.setTitle("Collection Örneği");
    sub1.setDescreption(
        "Bu modülde collection'ları daha detaylıca göreceksiniz");
    _postDartList.add(sub1);

    Post sub2 = Post();
    sub2.setId(2);
    sub2.setTitle("Widget Örneği");
    sub2.setDescreption(
        "Widget Bu modülde widget kavramına daha derinlemesine dalacaksınız");
    _postDartList.add(sub2);

    Post sub3 = Post();
    sub3.setId(3);
    sub3.setTitle("Widget Ağacı");
    sub3.setDescreption(
        "Widget Bu modülde widget kavramına daha derinlemesine dalacaksınız");
    _postDartList.add(sub3);

    Post sub11 = Post();
    sub11.setId(4);
    sub11.setTitle("Layout");
    sub11.setDescreption(
        "Bu modülde layout widget'larını öğrenerek istediğiniz ekranları Flutter'da nasıl tasarlayabileceğinizi göreceksiniz.");
    _postDartList.add(sub11);

    Post sub22 = Post();
    sub22.setId(5);
    sub22.setTitle("Navigation");
    sub22.setDescreption(
        "Bu modülde ekranlar arası geçiş yapmak için navigation kavramını göreceksiniz. ");
    _postDartList.add(sub22);

    Post sub33 = Post();
    sub33.setId(6);
    sub33.setTitle("Asenkron Programlama");
    sub33.setDescreption("Bu modülde asenkron çalışma mantığını tanıyacak");
    _postDartList.add(sub33);
  }

  //SubjectController().getMainSubjectList();
  List<Post> getPostListBySubjectId(int subjectId) {
    return _postDartList;
  }
}
