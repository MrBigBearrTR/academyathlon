import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Error'),backgroundColor: Colors.red,),
      body: Center(child: Text("404",style: TextStyle(fontSize: 36),),),
    );
  }
}
