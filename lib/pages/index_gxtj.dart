import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class index_gxtj extends StatefulWidget {
  @override
  _index_gxtjState createState() => _index_gxtjState();
}

class _index_gxtjState extends State<index_gxtj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 160.0,
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 100.0,
                    color: Colors.red,
                  ),
                  Container(
                    height: 60.0,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 30.0,
              left: 10.0,
              child:  Container(
                  height: 120.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white24,
                  ),
                  child: Carousel(
                    images: [
                      new NetworkImage('http://p1.music.126.net/thHP6ooWw893Ccfk_iXG5w==/109951163866743145.jpg'),
                      new NetworkImage('http://p1.music.126.net/kEGOOxh_p6H7UHKuOOFkFg==/109951163871789068.jpg'),
                      new NetworkImage('http://p1.music.126.net/AKa1piGvA2WrH8NZLyAkrA==/109951163871321608.jpg'),
                      new NetworkImage('http://p1.music.126.net/wa7Oxq5yysZgGBvOlivwEg==/109951163871318124.jpg'),
                    ],
                    dotSize: 4.0,
                    dotSpacing: 14.0,
                    dotColor: Colors.redAccent,
                    indicatorBgPadding: 15.0,
                    dotBgColor: Colors.white24.withOpacity(0.0),
                    borderRadius: false,
                  ),
              ),
            ),
          ],
        ),
        Center(
          child: Text('Adasdas'),
        ),
        Center(
          child: Text('dasdas'),
        ),
        Center(
          child: Text('dasdas'),
        ),
        Center(
          child: Text('dasdas'),
        ),
        Center(
          child: Text('dasdas'),
        ),
        Center(
          child: Text('dasdas'),
        ),
        Center(
          child: Text('dasdas'),
        ),
        Center(
          child: Text('dasdas'),
        ),
        Center(
          child: Text('dasdas'),
        ),
        Center(
          child: Text('dasdas'),
        ),
        Center(
          child: Text('dasdas'),
        ),
      ],
    ));
  }
}
