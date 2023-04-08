import 'package:academyathlon/controller/pages/DersKonular%C4%B1Page.dart';
import 'package:academyathlon/controller/pages/G%C3%B6revKonular%C4%B1Page.dart';
import 'package:academyathlon/controller/pages/ProfilePage.dart';
import 'package:academyathlon/controller/pages/SerbestKonularPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.blueAccent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
            child:
            Container(
              width: 200.0,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => ProfilePage()),);
                          },
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                                "https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg"),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Enes BOZKURT",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                    ],
                  ),
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.home_outlined, color: Colors.white,),
                        title: const Text('HOME PAGE ',style: TextStyle(color: Colors.white)),
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => HomePage()),);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.class_outlined, color: Colors.white,),
                        title: const Text('DERS KONULARI ',style: TextStyle(color: Colors.white)),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DersKonulariPage()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.task, color: Colors.white,),
                        title: const Text('GÖREV KONULARI ',style: TextStyle(color: Colors.white)),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GorevKonulariPage()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.search, color: Colors.white,),
                        title: const Text('SERBEST KONULAR  ',style: TextStyle(color: Colors.white)),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SerbestKonularPage()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.logout, color: Colors.white,),
                        title: const Text('ÇIKIŞ YAP',style: TextStyle(color: Colors.white)),
                        onTap: (){
                          SystemNavigator.pop();
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          TweenAnimationBuilder(tween: Tween <double>(begin: 0, end: value),
              duration: Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child: Scaffold(
                    appBar: AppBar(
                        title: Text(" Uygulama Adı"),
                        leading: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              value = 1;
                            });
                          },
                        )
                    ),
                    body: Center(
                      child: Text("Sağa Kaydır"),
                    ),

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

            // onTap: (){
            //               setState(() {
            //                 value == 0 ? value = 1 : value =0;
            //               });
            //             },
          )
        ],
      ),
    );
  }
}

