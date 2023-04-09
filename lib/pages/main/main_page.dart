import 'package:academyathlon/controller/subject/subject_controller.dart';
import 'package:academyathlon/controller/user/user_controller.dart';
import 'package:academyathlon/controller/user/user_detail_controller.dart';
import 'package:academyathlon/pages/main/sidebar.dart';
import 'package:academyathlon/pages/subjects/subject_list_element.dart';
import 'package:academyathlon/utils/theme_color_constant.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../data/entity/user/User.dart';
import '../../data/entity/user/UserDetail.dart';
import '../../utils/general_background.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    /* final User user = ModalRoute.of(context)!.settings.arguments as User;
    final UserDetail? userDetail =
        UserDetailController().getUserDetailByUserId(user.getId() ?? 0);*/
    final User? user = UserController().login("1", "1");
    final UserDetail? userDetail =
        UserDetailController().getUserDetailByUserId(1);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: GeneralBackground().getGeneralMainBackground()
          ),
          Sidebar(user: user),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: const Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child: Scaffold(
                    appBar: AppBar(
                        backgroundColor: Colors.transparent,
                        flexibleSpace: Container(
                          decoration: GeneralBackground().getGeneralMainBackground()
                        ),
                        title: const Text('Academyathlon'),
                        leading: IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              value = 1;
                            });
                          },
                        )),
                    body: Container(
                        decoration: GeneralBackground().getGeneralBackground(),
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    ThemeColorConstant.darkBlue6,
                                    ThemeColorConstant.darkBlue5,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              height: 150,
                              child: Row(
                                children: [
                                  Image.asset('assets/images/merhaba.png'),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 0, 0, 0)),
                                  Flexible(
                                    child: Text(
                                      'Merhaba ${userDetail?.getName() ?? ""} ${userDetail?.getSurname() ?? ""}',
                                      softWrap: true,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: ThemeColorConstant.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                            Container(
                              height: 200,
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  final subject = SubjectController()
                                      .getMainSubjectList()[index];
                                  return ListTile(
                                      title:
                                          SubjectListElement(subject: subject));
                                },
                                itemCount: SubjectController()
                                    .getMainSubjectList()
                                    .length,
                              ),
                            ),
                          ],
                        )),
                  ),
                ));
              }),
          GestureDetector(
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
