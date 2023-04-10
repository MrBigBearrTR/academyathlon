import 'package:academyathlon/controller/user/user_detail_controller.dart';
import 'package:academyathlon/data/entity/commend/Commend.dart';
import 'package:academyathlon/data/entity/user/UserDetail.dart';
import 'package:flutter/material.dart';

class PostCommend extends StatelessWidget {
  final Commend commend;

  const PostCommend({Key? key, required this.commend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserDetail? userDetail =
        UserDetailController().getUserDetailByUserId(commend.getUserId() ?? 0);
    return Card(
      color: Colors.black45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profil.png"),
                  ),
                  title: Text(
                      "${userDetail.getName() ?? ""} ${userDetail.getSurname() ?? ""}"),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text(
                  commend.getContent() ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
