import 'package:academyathlon/controller/post/post_liker_controller.dart';
import 'package:academyathlon/utils/theme_color_constant.dart';
import 'package:flutter/material.dart';

import '../../controller/user/user_links_controller.dart';
import '../../data/entity/user/UserDetail.dart';
import '../../data/enum/ELinksType.dart';
import '../../utils/general_background.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserDetail userDetail =
        ModalRoute.of(context)!.settings.arguments as UserDetail;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profil Sayfası'),
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
              decoration: GeneralBackground().getGeneralMainBackground()),
        ),
        body: Container(
          decoration: GeneralBackground().getGeneralBackground(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/images/profil.png"),
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                Text(
                  "${userDetail.getName() ?? ""} ${userDetail.getSurname() ?? ""}",
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: ThemeColorConstant.white,
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                Text(
                  userDetail.getEmail() ?? "E-Mail Bulunamadı",
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: ThemeColorConstant.gray,
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.phone),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  userDetail.getPhone() ?? "Telefon Bulunamadı",
                                  style: const TextStyle(
                                    color: ThemeColorConstant.gray,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.link),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  UserLinksController()
                                          .getUserLinksByUserIdAndLinksType(
                                              userDetail.getUserId() ?? 0,
                                              ELinksType.github)
                                          ?.getLink()
                                          .toString() ??
                                      "",
                                  style: const TextStyle(
                                    color: ThemeColorConstant.gray,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.work),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  UserLinksController()
                                          .getUserLinksByUserIdAndLinksType(
                                              userDetail.getUserId() ?? 0,
                                              ELinksType.linkedin)
                                          ?.getLink()
                                          .toString() ??
                                      "",
                                  style: const TextStyle(
                                    color: ThemeColorConstant.gray,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'Hakkımda',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ThemeColorConstant.blue2,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      userDetail.getDescreption() ?? "",
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.contact_page_outlined,
                            color: Colors.white),
                        title: const Text('Kaydettiklerim',
                            style: TextStyle(color: Colors.white)),
                        subtitle: const Text('',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.of(context).pushNamed("/postSavedList",arguments: userDetail.getUserId());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.gpp_good_rounded,
                            color: Colors.white),
                        title: const Text('Derecelerim',
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text(
                            'Puanım:${PostLikerController().getGeneralLikeCountByUserId(userDetail.getUserId() ?? 0)}',
                            style: const TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
