import 'package:academyathlon/controller/post/post_liker_controller.dart';
import 'package:flutter/material.dart';

import '../../controller/user/user_links_controller.dart';
import '../../data/entity/user/UserDetail.dart';
import '../../data/enum/ELinksType.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserDetail userDetail =
        ModalRoute.of(context)!.settings.arguments as UserDetail;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Sayfası'),
      ),
      body: Center(
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
              ),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Text(
              userDetail.getEmail() ?? "E-Mail Bulunamadı",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
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
                    const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                    Text(
                      userDetail.getPhone() ?? "Telefon Bulunamadı",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
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
                    const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                    Text(
                      UserLinksController()
                              .getUserLinksByUserIdAndLinksType(
                                  userDetail.getUserId() ?? 0,
                                  ELinksType.github)
                              ?.getLink()
                              .toString() ??
                          "",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
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
                    const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                    Text(
                      UserLinksController()
                              .getUserLinksByUserIdAndLinksType(
                                  userDetail.getUserId() ?? 0,
                                  ELinksType.linkedin)
                              ?.getLink()
                              .toString() ??
                          "",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
            Container(
              color: Colors.red,
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
                  color: Colors.grey,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  userDetail.getDescreption() ?? "",
                  style: const TextStyle(
                    fontSize: 22.0,
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
                    leading: const Icon(Icons.contact_page_outlined),
                    title: const Text('Kaydettiklerim'),
                    subtitle: const Text(''),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.gpp_good_rounded),
                    title: const Text('Derecelerim'),
                    subtitle: Text(
                        'Puanım:${PostLinkerController().getGeneralLikeCountByUserId(userDetail.getUserId() ?? 0)}'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
