import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 200.0,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      /* Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => ProfilePage()),);*/
                    },
                    child: const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          "https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg"),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Enes BOZKURT",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
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
                    SystemNavigator.pop();
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
