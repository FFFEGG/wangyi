import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wangyi/pages/index/look_live.dart';
import 'package:wangyi/pages/index/new_music.dart';
import 'package:wangyi/pages/index/tj_music.dart';

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
          index_swiper(),
          nav(),
          Divider(
            color: Colors.black12,
            height: 2.0,
          ),
          //推荐歌单
          tj_music(),
          //LOOK直播
          look_live(),
          //最新音乐
          new_music(),

        ],
      ),
    );
  }
}

class index_swiper extends StatefulWidget {
  @override
  _index_swiperState createState() => _index_swiperState();
}

class _index_swiperState extends State<index_swiper> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                child: Stack(
                  children: <Widget>[
                    Container(
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
                    Positioned(
                      right: 5.0,
                      bottom: 0.0,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        color: Colors.red,
                        child: Text(
                          '新碟首发',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                child: Stack(
                  children: <Widget>[
                    Container(
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
                    Positioned(
                      right: 5.0,
                      bottom: 0.0,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        color: Colors.green,
                        child: Text(
                          '独家专访',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                  child: Stack(
                children: <Widget>[
                  Container(
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
                  Positioned(
                    right: 5.0,
                    bottom: 0.0,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      color: Colors.amber,
                      child: Text(
                        '独家自制',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )),
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
    );
  }
}

class nav extends StatefulWidget {
  @override
  _navState createState() => _navState();
}

class _navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: new NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 4,
      children: <Widget>[
        ListTile(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 2.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: const [
                      Colors.black12,
                      Colors.black38,
                      Colors.white70,
                    ],
                    stops: const [0.0, 0.5, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              height: 50.0,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 90.0,
                child: Image.asset(
                  'images/fm.png',
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ),
          subtitle: Text(
            '私人FM',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 2.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: const [
                      Colors.black12,
                      Colors.black38,
                      Colors.white70,
                    ],
                    stops: const [0.0, 0.5, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              height: 50.0,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 90.0,
                child: Image.asset(
                  'images/rili.png',
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ),
          subtitle: Text(
            '每日推荐',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 2.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: const [
                      Colors.black12,
                      Colors.black38,
                      Colors.white70,
                    ],
                    stops: const [0.0, 0.5, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              height: 50.0,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 90.0,
                child: Image.asset(
                  'images/gedan.png',
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ),
          subtitle: Text(
            '歌单',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 2.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: const [
                      Colors.black12,
                      Colors.black38,
                      Colors.white70,
                    ],
                    stops: const [0.0, 0.5, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              height: 50.0,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 90.0,
                child: Image.asset(
                  'images/phb.png',
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ),
          subtitle: Text(
            '排行榜',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}






