import 'package:academyathlon/data/entity/subject/Subject.dart';
import 'package:academyathlon/pages/subjects/subject_list_element.dart';
import 'package:flutter/material.dart';

import '../../controller/subject/subject_controller.dart';

class SubjectList extends StatelessWidget {
  const SubjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Subject mainSubject = ModalRoute.of(context)!.settings.arguments as Subject;
    return Scaffold(
      appBar: AppBar(
          title: Text(mainSubject.getName() ?? "Academyathlon"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final subject = SubjectController()
              .getSubSubjectListBySubId(mainSubject.getId() ?? 0)[index];
          return ListTile(title: SubjectListElement(subject: subject));
        },
        itemCount: SubjectController()
            .getSubSubjectListBySubId(mainSubject.getId() ?? 0)
            .length,
      ),
    );
  }
}
