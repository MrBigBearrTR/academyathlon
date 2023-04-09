import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container( //sarı alan
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(

                bottomRight: Radius.circular(40)
              ),
              color:Colors.amberAccent.shade200
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 45,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40)
                      )

                    ),
                  ),
                ),

                Positioned(
                  top: 80,
                    left: 50,

                    child:const Text("ÖDEVLER",style:TextStyle(
                        fontSize: 40,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600))),
              ],
            ),

          ),
          Expanded(child:
          ListView(
            children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10,top: 20),
              height: 180,
              padding:
              const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(60.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(60.0),

                  ),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.pink.withOpacity(0.3),
                      offset: new Offset(-10.0, 0.0),
                      blurRadius: 20.0,
                      spreadRadius: 4.0),
                  ],
                ),
                padding: const EdgeInsets.only(
                  left: 32,
                  top: 30.0,
                  bottom: 50
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    Text(
                        "7.MODÜL",
                      style: TextStyle(color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),

                    ),
                    const SizedBox(
                      height: 3,
                    ),

                   ListTile(
                     leading:const Icon(Icons.document_scanner_outlined,
                         color: Colors.white,size: 50),
                     onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => MaterialApp()),
                       );
                     },

                   title:const Text(
                        "Stateless Widget \nStateful Widget" ,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 22,
                        fontWeight: FontWeight.w400
                      )
                    ),


                   ),
                  ],
                ),
              ),
            )
          ],

          ),

    ),
      Container(
        margin: const EdgeInsets.only(bottom: 80,top: 20),
        height: 180,
        width: 500,
        padding:
        const EdgeInsets.only(left: 20,right: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(60.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(60.0),

            ),
            boxShadow: [
              new BoxShadow(
                  color: Colors.pink.withOpacity(0.3),
                  offset: new Offset(-10.0, 0.0),
                  blurRadius: 20.0,
                  spreadRadius: 4.0),
            ],
          ),
          padding: const EdgeInsets.only(
              left: 32,
              top: 30.0,
              bottom: 50
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Text(
                "10.MODÜL",
                style: TextStyle(color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),

              ),
              const SizedBox(
                height: 3,
              ),
              ListTile(
              leading:const Icon(Icons.document_scanner_outlined,
                  color: Colors.white,size: 50),
                  onTap: () {
                Navigator.push(
                 context,
               MaterialPageRoute(builder: (context) => MaterialApp()),
                    );
                    },


                    title: const Text(
                      "Layout\nNavigation",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 22,
                          fontWeight: FontWeight.w400
                      ),


                    ),



                  ),
            ],
          ),
        ),
      ),
        ],
        
      ),
    );
  }
}


