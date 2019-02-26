import 'package:flutter/material.dart';

class tj_music extends StatefulWidget {
  @override
  _tj_musicState createState() => _tj_musicState();
}

class _tj_musicState extends State<tj_music> {
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
                  '推荐歌单',
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
            item(
              image_url:
                  'http://p2.music.126.net/N_zpp5UmeWEtqNJDKCLTLA==/109951163862128684.jpg?param=140y140',
              nums: '200',
              title: '我知道你很累，但你一定要加油鸭！',
            ),
            item(
              image_url:
                  'http://p1.music.126.net/NZh_fmYt3fjqUVnjaypV_Q==/109951163674428739.jpg?param=140y140',
              nums: '200',
              title: '古风盘点 | 一人一首原唱曲（男声篇）',
            ),
            item(
              image_url:
                  'http://p1.music.126.net/8jFpVjFPbT6xUQhbkFNCRQ==/19007257509959282.jpg?param=140y140',
              nums: '200',
              title: '细数那些值得单曲循环的英文歌',
            ),
            item(
              image_url:
                  'http://p1.music.126.net/XndPySLIcwqAoq1s5vIiYw==/109951163870324250.jpg?param=140y140',
              nums: '200',
              title: '电台节目————备胎之王',
            ),
            item(
              image_url:
                  'http://p2.music.126.net/yAJP9BYMvOqmyYe7FkkVCw==/18746673255781638.jpg?param=140y140',
              nums: '200',
              title: 'Helens小酒馆精选！年轻人的线下社交平台！',
            ),
            item(
              image_url:
                  'http://p2.music.126.net/8DhrkNymv5bFIG3Q7Jw6MA==/109951163823633535.jpg?param=140y140',
              nums: '200',
              title: '硬核摇滚工业重金属（狂暴）',
            ),
          ],
        ),
      ],
    );
  }
}

class item extends StatefulWidget {
  final String image_url;
  final String nums;
  final String title;

  item({this.image_url, this.nums, this.title});

  @override
  _itemState createState() => _itemState();
}

class _itemState extends State<item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1 / 1,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  image: DecorationImage(
                    image: NetworkImage(widget.image_url),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: 2.0,
                  right: 2.0,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.headset,
                        size: 10.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        widget.nums + '万',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
        Text(
          widget.title,
          maxLines: 2,
          style: TextStyle(
            fontSize: 13.0,
          ),
        ),
      ],
    );
  }
}
