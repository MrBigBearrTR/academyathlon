import 'package:academyathlon/data/entity/subject/Subject.dart';
import 'package:academyathlon/data/enum/ESubjectType.dart';

class SubjectController{
  static List<Subject> _subjects=[];
  static List<Subject> _dersSubjects=[];

  SubjectController(){

    _subjects=[];

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

    _dersSubjects=[];

    Subject sub11=Subject();
    sub11.setId(1);
    sub11.setDependedSubject(1);
    sub11.setName("Dart Dersleri");
    sub11.setESubjectType(ESubjectType.title);
    _dersSubjects.add(sub11);

    Subject sub22=Subject();
    sub22.setId(2);
    sub22.setDependedSubject(1);
    sub22.setName("Flutter Dersleri");
    sub22.setESubjectType(ESubjectType.title);
    _dersSubjects.add(sub22);

    Subject sub33=Subject();
    sub33.setId(3);
    sub33.setDependedSubject(1);
    sub33.setName("Unity Dersleri");
    sub33.setESubjectType(ESubjectType.title);
    _dersSubjects.add(sub33);
    Subject sub34=Subject();
    sub34.setId(4);
    sub34.setDependedSubject(1);
    sub34.setName("Unity1 Dersleri");
    sub34.setESubjectType(ESubjectType.title);
    _dersSubjects.add(sub34);
    Subject sub35=Subject();
    sub35.setId(5);
    sub35.setDependedSubject(1);
    sub35.setName("Unity2 Dersleri");
    sub35.setESubjectType(ESubjectType.title);
    _dersSubjects.add(sub35);
    Subject sub36=Subject();
    sub36.setId(6);
    sub36.setDependedSubject(1);
    sub36.setName("Unity3 Dersleri");
    sub36.setESubjectType(ESubjectType.title);
    _dersSubjects.add(sub36);
    Subject sub37=Subject();
    sub37.setId(7);
    sub37.setDependedSubject(1);
    sub37.setName("Unity4 Dersleri");
    sub37.setESubjectType(ESubjectType.title);
    _dersSubjects.add(sub37);

  }

  //SubjectController().getMainSubjectList();
  List<Subject> getMainSubjectList(){
    return _subjects;
  }

  List<Subject> getSubSubjectListBySubId(int subId){
    return _dersSubjects;
  }

}