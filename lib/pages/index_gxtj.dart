import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
              child: Container(
                height: 120.0,
                width: MediaQuery.of(context).size.width - 20.0,
                child: CarouselSlider(items: [
                  InkWell(
                    child: new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: new EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://p1.music.126.net/wa7Oxq5yysZgGBvOlivwEg==/109951163871318124.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: new EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://p1.music.126.net/kEGOOxh_p6H7UHKuOOFkFg==/109951163871789068.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: new EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://p1.music.126.net/thHP6ooWw893Ccfk_iXG5w==/109951163866743145.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: new EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://p1.music.126.net/AKa1piGvA2WrH8NZLyAkrA==/109951163871321608.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: new EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://p1.music.126.net/JEnkpJ_K_FNFH74tpAusDQ==/109951163871768363.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: new EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'http://p1.music.126.net/x3GJj_0ke1XgIgkfdYLdqQ==/109951163871309165.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ], height: 120.0, autoPlay: true),
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
