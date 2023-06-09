import 'package:academyathlon/data/entity/subject/Subject.dart';
import 'package:flutter/material.dart';

import '../../data/enum/ESubjectType.dart';

class SubjectListElement extends StatelessWidget {
  final Subject subject;

  const SubjectListElement({Key? key, required this.subject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        switch (subject.getESubjectType()) {
          case ESubjectType.title:
            Navigator.pushNamed(context, "/subList", arguments: subject);
            break;
          case ESubjectType.subject:
            Navigator.pushNamed(context, "/post", arguments: subject);
            break;
          default:
            Navigator.pushNamed(context, "/error");
            break;
        }
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(85, 50),
        backgroundColor: const Color(0x4dffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        subject.getName().toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
