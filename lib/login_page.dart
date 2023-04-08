import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();



    void _handleLogin() {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      if (email == 'f17@gmail.com' && password == '123456') {


      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
          content: Text('Hatalı e-posta adresi veya şifre girdiniz.'),
          ),
        );
      }
    }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.white70),
          child: SingleChildScrollView(



            child: Column(
              children: [
                Container( //resmin arkasındaki daire
                  margin: EdgeInsets.all(20),
                  width: 180,
                  height: 180,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(110),
                    border: Border.all(
                      color: Colors.black54,
                      width: 1.5,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(// resmin arka rengi
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(110),
                      border: Border.all(
                          color: Colors.black54,
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
                  child: GradientText(
                    "MERHABA",
                    style: TextStyle(
                        fontWeight:FontWeight.w600,
                        fontSize: 30),
                    colors: [Colors.blue,Colors.green,Colors.yellow,Colors.red],


                  ),

                ),

                Container(
                  decoration: BoxDecoration(
                    color:Colors.black12,
                    borderRadius:BorderRadius.circular(20),
                  ),

                  margin: EdgeInsets.only(bottom:20,top:30,left:20,right: 20),
                  padding: EdgeInsets.only(left:20 ,right:20, top:5, bottom:10 ),

                  child: TextFormField(
                      controller: _emailController,

                      decoration:InputDecoration(
                          labelText: "Email",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.email)
                      ),

                      style:TextStyle(
                          color:Colors.black)
                  ),
                ),


                Container(
                  decoration: BoxDecoration(
                    color:Colors.black12,
                    borderRadius:BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.only(left:20 ,right:20, top:10, bottom:5 ),

                  child: TextFormField(//şifre

                      obscureText:true,
                      controller: _passwordController,
                      decoration:InputDecoration(
                          labelText: "Şifre",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.key_outlined)

                      ),
                      style:TextStyle(
                          color:Colors.black)

                  ),
                ),
                InkWell(
                  onTap: _handleLogin,
                  child: Container( //giriş butonu
                    margin: EdgeInsets.all(20),

                    width: MediaQuery.of(context).size.width/1.5,
                    height: 60,
                    padding:EdgeInsets.all(10),
                    decoration: BoxDecoration(

                      gradient:LinearGradient(colors:[
                        Colors.black12,
                        Colors.black26,
                      ],
                          begin: Alignment.topRight,
                          end:Alignment.bottomLeft
                      ),

                      borderRadius: BorderRadius.circular(20),

                    ),


                    child: Center(
                      child: Text(
                        "GİRİŞ",
                        style: TextStyle(color: Colors.black54 ,
                          fontSize: 20,
                          fontWeight:FontWeight.w600,
                        ),
                      ),
                    ),

                  ),
                ),



              ],
            ),

          ),
        ),

      ),

    );


  }
}