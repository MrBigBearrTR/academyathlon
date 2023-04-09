import 'package:academyathlon/controller/user/user_detail_controller.dart';
import 'package:academyathlon/data/entity/user/User.dart';
import 'package:academyathlon/data/entity/user/UserDetail.dart';
import 'package:flutter/material.dart';

import '../../controller/subject/subject_controller.dart';
import '../../data/enum/ESubjectType.dart';

class Sidebar extends StatelessWidget {
  final User? user;

  const Sidebar({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserDetail? userDetail =
        UserDetailController().getUserDetailByUserId(user?.getId() ?? 0);

    return SafeArea(
      child: Container(
        width: 230,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/profile",arguments: userDetail);
                    },
                    child: const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage("assets/images/profil.png"),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "${userDetail?.getName() ?? ""} ${userDetail?.getSurname() ?? ""}",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  title: const Text('HOME PAGE ',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.pushNamed(context, "/main");
                    /*   Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => HomePage()),);*/
                  },
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final subject =
                          SubjectController().getMainSubjectList()[index];
                      return ListTile(
                          leading: const Icon(
                            Icons.align_horizontal_right,
                            color: Colors.white,
                          ),
                          title: Text(
                            subject.getName().toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            switch (subject.getESubjectType()) {
                              case ESubjectType.title:
                                Navigator.pushNamed(context, "/subList",
                                    arguments: subject);
                                break;
                              case ESubjectType.subject:
                                Navigator.pushNamed(context, "/",
                                    arguments: subject);
                                break;
                              default:
                                Navigator.pushNamed(context, "/error");
                                break;
                            }
                          });
                    },
                    itemCount: SubjectController().getMainSubjectList().length,
                  ),
                ),
                /*ListTile(
                  leading: const Icon(
                    Icons.class_outlined,
                    color: Colors.white,
                  ),
                  title: const Text('DERS KONULARI ',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DersKonulariPage()),
                    );*/
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.task,
                    color: Colors.white,
                  ),
                  title: const Text('GÖREV KONULARI ',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GorevKonulariPage()),
                    );*/
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  title: const Text('SERBEST KONULAR  ',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SerbestKonularPage()),
                    );*/
                  },
                ),*/
                ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: const Text('ÇIKIŞ YAP',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
