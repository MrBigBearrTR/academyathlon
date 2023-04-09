import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Sayfası'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Atıl Samancıoğlu',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'atılsamacıoğlu@gmail.com',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),

            SizedBox(height: 10.0),
            Text(
              'atılsamacıoğlu@gmail.com',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.phone),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '123-456-7890',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.link),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'https://github.com/kullaniciadi',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.work),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'https://www.linkedin.com/in/kullaniciadi',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Container(
              color: Colors.red,
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Hakkımda',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Atıl Samancıoğlu online ve offline platformlarda 300.000 den fazla öğrenciye iOS Mobil Geliştirme, Android Mobil Geliştirme, Python ve Siber Güvenlik eğitimleri vermektedir.',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10.0),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.contact_page_outlined),
                    title: Text('kaydedilenler'),
                    subtitle: Text(''),
                  ),
                  ListTile(
                    leading: Icon(Icons.gpp_good_rounded),
                    title: Text('Dereceler'),
                    subtitle: Text('puanlama'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }}