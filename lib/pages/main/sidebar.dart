import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      Navigator.pushNamed(context, "/");
                    },
                    child: const CircleAvatar(

                      radius: 50.0,
                      backgroundImage: AssetImage("assets/images/profil.png"),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Akademi Bursiyeri",
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
                ListTile(
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
                ),
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
