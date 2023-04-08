
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.black),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 180,
                height: 180,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  border: Border.all(
                    color: Colors.white54,
                    width: 1,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(110),
                    border: Border.all(
                      color: Colors.white,
                     width: 1
                    ),
                  ),
                  child:  Image(

                      image: AssetImage("images/nnw1HiOv_400x400.png"),


                  ),
                  ),
                ),

              Container(
                margin: EdgeInsets.only(top:30),
                child: Text(
                    "GİRİŞ",
                  style: TextStyle(
                    color:Colors.white70,
                    fontSize: 30),

                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.circular(20),
                ),
                  margin: EdgeInsets.only(bottom:20,top:30,left:20,right: 20),
                  padding: EdgeInsets.only(left:20 ,right:20, top:5, bottom:10 ),

                  child: TextFormField(
                    decoration:InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.people_alt_outlined)

                    ),
                    style:TextStyle(
                    color:Colors.black)

                  ),
              ),


              Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(left:20 ,right:20, top:10, bottom:5 ),

                child: TextFormField(
                    obscureText:true,
                    decoration:InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.key_outlined)

                    ),
                    style:TextStyle(
                        color:Colors.black)

                ),
              ),
              InkWell(
                onTap: (){
                  print("tıklandı");
                },

                child: Container(
                  margin: EdgeInsets.all(20),

                width: MediaQuery.of(context).size.width/1.5,
                  height: 60,
                  padding:EdgeInsets.all(10),
                  decoration: BoxDecoration(

                    gradient:LinearGradient(colors:[
                      Colors.white54,
                      Colors.white,
                    ],
                    begin: Alignment.topRight,
                      end:Alignment.bottomLeft
                    ),


                    borderRadius: BorderRadius.circular(20),


                  ),



                  child: Center(
                    child: Text(
                        "GİRİŞ",
                    style: TextStyle(color: Colors.black ,fontSize: 20),
                    ),
                  ),

                ),
              )
            ],
          ),
        ),
      ),

    ),
    );


  }
}
