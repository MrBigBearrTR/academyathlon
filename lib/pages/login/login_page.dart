import 'package:academyathlon/controller/user/user_controller.dart';
import 'package:academyathlon/utils/general_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:academyathlon/utils/theme_color_constant.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    final username = _emailController.text.trim();
    final password = _passwordController.text.trim();

    var user = UserController().login(username, password);
    if (user != null) {
      Navigator.pushReplacementNamed(context, "/main", arguments: user);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Hatalı e-posta adresi veya şifre girdiniz.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: GeneralBackground().getLoginBackground(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  //resmin arkasındaki daire
                  margin: const EdgeInsets.all(20),
                  width: 180,
                  height: 180,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(110),
                    border: Border.all(
                      color: ThemeColorConstant.purple2,
                      width: 1.5,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      // resmin arka rengi
                      //color: Colors.white,
                      borderRadius: BorderRadius.circular(110),
                      border: Border.all(color: ThemeColorConstant.purple, width: 1),
                    ),
                    child: const Image(
                      image:
                          AssetImage("assets/images/academyathlonIconGray.png"),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: GradientText(
                    "Akademyathlon",
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                    colors: const [
                      ThemeColorConstant.white,
                      ThemeColorConstant.white
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ThemeColorConstant.blueOp30,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: const EdgeInsets.only(
                      bottom: 20, top: 30, left: 20, right: 20),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 5, bottom: 10),
                  child: TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                          labelText: "Email",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.email)),
                      style: const TextStyle(color: ThemeColorConstant.white)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ThemeColorConstant.blueOp30,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 5),
                  child: TextFormField(
                      //şifre

                      obscureText: true,
                      controller: _passwordController,
                      decoration: const InputDecoration(
                          labelText: "Şifre",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.key_outlined)),
                      style: const TextStyle(color: ThemeColorConstant.white)),
                ),
                InkWell(
                  onTap: _handleLogin,
                  child: Container(
                    //giriş butonu
                    margin: const EdgeInsets.all(20),

                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 60,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        ThemeColorConstant.purple,
                        ThemeColorConstant.purple2,
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: const Center(
                      child: Text(
                        "GİRİŞ",
                        style: TextStyle(
                          color: ThemeColorConstant.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
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
