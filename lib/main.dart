import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'appJam',
      home: Scaffold(
        appBar: AppBar(
          title: Text('appJam'),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.grey.shade400,
              height: 150,
              child: Row(
                children: [
                  Image.asset('assets/resimler/merhaba.png'),
                  SizedBox(width: 22),
                  Text('Merhaba Recep!',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),

            ElevatedButton(onPressed: () {},
              child: Text(
                '    Ders Ödevleri         >',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(333, 90),
                primary: Color(0xFFDB4437),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 80),
            ElevatedButton(onPressed: () {},
              child: Text(
                '    Konu Ödevleri         >',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(333, 90),
                primary: Color(0xFFFABC05),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 80),
            ElevatedButton(onPressed: () {},
              child: Text(
                '     Serbest Kürsü         >',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(333, 90),
                primary: Color(0xFF34A853),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
