import 'package:academyathlon/pages/main/sidebar.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
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
          const Sidebar(),
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
                        title: const Text('Academyathlon'),
                        leading: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              value = 1;
                            });
                          },
                        )),
                    body: Column(
                      children: [
                        Container(
                          color: Colors.grey.shade400,
                          height: 150,
                          child: Row(
                            children: [
                              Image.asset('assets/images/merhaba.png'),
                              const SizedBox(width: 22),
                              const Text(
                                'Merhaba Recep!',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(333, 90),
                            backgroundColor: const Color(0xFFDB4437),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            '    Ders Ödevleri         >',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(height: 80),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(333, 90),
                            backgroundColor: const Color(0xFFFABC05),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            '    Konu Ödevleri         >',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(height: 80),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(333, 90),
                            backgroundColor: const Color(0xFF34A853),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            '     Serbest Kürsü         >',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
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
          )
        ],
      ),
    );
  }
}
