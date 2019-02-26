import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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


class look_live extends StatefulWidget {
  @override
  _look_liveState createState() => _look_liveState();
}

class _look_liveState extends State<look_live> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/look.png',
                  width: 20.0,
                  height: 20.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'LOOK直播',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' >',
                ),
              ],
            )),
        GridView.count(
          physics: new NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 10 / 16,
          padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://apic.douyucdn.cn/upload/avatar_v3/201902/1683c28ac917415197e07a23aefd2749_big.jpg?rltime?x-oss-process=image/format,webp'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(4.0, 1.0, 4.0, 1.0),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                bottomRight: Radius.circular(4.0)),
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'images/live.gif',
                                width: 15.0,
                                height: 15.0,
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                '小可爱',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 3.0,
                        left: 3.0,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.person_outline,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '9珍珠好吃',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '今天眼睛肿了wuwuw',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://apic.douyucdn.cn/upload/avatar_v3/201812/71c742ce5a77ff0d8f80a4d14e1ad79e_big.jpg?x-oss-process=image/format,webp'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(4.0, 1.0, 4.0, 1.0),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                bottomRight: Radius.circular(4.0)),
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'images/live.gif',
                                width: 15.0,
                                height: 15.0,
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                '甜美',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 3.0,
                        left: 3.0,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.person_outline,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '莎莎',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '你可能是个声控',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://apic.douyucdn.cn/upload/avatar_v3/201902/256fcd18d6d149faa2ea3dcdc8cfca8f_big.jpg?x-oss-process=image/format,webp'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(4.0, 1.0, 4.0, 1.0),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                bottomRight: Radius.circular(4.0)),
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'images/live.gif',
                                width: 15.0,
                                height: 15.0,
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                '戏精',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 3.0,
                        left: 3.0,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.person_outline,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '陈豆芽',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '今天吃头油拌饭～',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class new_music extends StatefulWidget {
  @override
  _new_musicState createState() => _new_musicState();
}

class _new_musicState extends State<new_music> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Text(
                  '最新音乐',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' >',
                ),
              ],
            )),
        GridView.count(
          physics: new NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 5 / 7,
          padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://p2.music.126.net/K2Do99qxseaLtnDh2z7HUg==/109951163888738353.webp?imageView&thumbnail=369x0&quality=75&tostatic=0&type=webp'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '推荐合口味的新歌',
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                      ),
                      Text(
                        '五一',
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.black38
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ],
    );
  }
}




