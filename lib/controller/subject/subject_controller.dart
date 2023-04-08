import 'package:academyathlon/data/entity/subject/Subject.dart';
import 'package:academyathlon/data/enum/ESubjectType.dart';

class SubjectController{
  static List<Subject> _subjects=[];

  SubjectController(){
    Subject sub1=Subject();
    sub1.setId(1);
    sub1.setName("Ders Konuları");
    sub1.setESubjectType(ESubjectType.title);
    _subjects.add(sub1);

    Subject sub2=Subject();
    sub2.setId(2);
    sub2.setName("Görev Konuları");
    sub2.setESubjectType(ESubjectType.title);
    _subjects.add(sub2);

    Subject sub3=Subject();
    sub3.setId(3);
    sub3.setName("Serbest Konular");
    sub3.setESubjectType(ESubjectType.title);
    _subjects.add(sub3);

  }

  //SubjectController().getMainSubjectList();
  List<Subject> getMainSubjectList(){
    return _subjects;
  }
}