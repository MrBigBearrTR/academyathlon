import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  double value = 0 ;

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
          ) ,
          SafeArea(
            child: Container(
              width: 200.0,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg"),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Enes BOZKURT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0),
                      ),
                    ],
                  ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: (){},
                          leading: Icon(Icons.home, color: Colors.white,
                          ),
                          title: Text("Home", style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          onTap: (){},
                          leading: Icon(Icons.search, color: Colors.white,
                          ),
                          title: Text("Search", style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          onTap: (){},
                          leading: Icon(Icons.create, color: Colors.white,
                          ),
                          title: Text("Create", style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          onTap: (){},
                          leading: Icon(Icons.account_circle, color: Colors.white,
                          ),
                          title: Text("Account", style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          onTap: (){},
                          leading: Icon(Icons.logout, color: Colors.white,
                          ),
                          title: Text("Log Out", style: TextStyle(color: Colors.white),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          TweenAnimationBuilder(tween:Tween <double>(begin:0 , end: value),
              duration: Duration(milliseconds: 500),
              builder: (_,double val,__){
                return(Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200*val)
                    ..rotateY((pi/6)*val),
                  child: Scaffold(
                    appBar: AppBar(
                        title: Text (" Uygulama Adı"),
                        leading: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed:(){
                            setState(() {
                              value=1 ;
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
            onHorizontalDragUpdate: (e){
              if(e.delta.dx > 0){
                setState(() {
                  value =1;
                });

              }else {
                setState(() {
                  value=0;
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