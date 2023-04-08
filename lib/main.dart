import 'package:academyathlon/utils/reoute_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/login/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Academyathlon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RouteGenerator.routeGeneration,
    );
  }
}