import 'package:flutter/material.dart';

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
            item(
              image_url:
                  'http://p2.music.126.net/K2Do99qxseaLtnDh2z7HUg==/109951163888738353.webp?imageView&thumbnail=369x0&quality=75&tostatic=0&type=webp',
              name: '周杰伦',
              title: '推荐合口味的新歌',
            ),
            item(
              image_url:
                  'http://p1.music.126.net/zNudfAtE75k4rYmGtdKjdA==/109951163889887287.jpg',
              name: 'Dua Lipa',
              title: 'Swan Song(Frodsa',
            ),
            item(
              image_url:
                  'http://p2.music.126.net/ionp_Vq8MhX3iq_2LxgNvQ==/109951163855540651.jpg?param=140y140',
              name: '',
              title: '日语｜动漫精灵，樱花缤纷。',
            ),
            item(
              image_url:
                  'https://p2.music.126.net/AbMGlt0es_GeTOso9W3Hrw==/109951162800916357.jpg?param=140y140',
              name: '靡音里里的推荐',
              title: '根据你喜欢的单曲《不想上班》推荐',
            ),
            item(
              image_url:
                  'http://p2.music.126.net/K2Do99qxseaLtnDh2z7HUg==/109951163888738353.webp?imageView&thumbnail=369x0&quality=75&tostatic=0&type=webp',
              name: '阿鲲',
              title: '流浪地球 电影原声大碟',
            ),
            item(
              image_url:
                  'http://p3.music.126.net/oT8jA-rISedZMawkUPM8hA==/109951163858175392.jpg?param=100y100',
              name: 'ONE OK ROCK',
              title: 'Eye Of The Storm',
            ),
          ],
        ),
      ],
    );
  }
}

class item extends StatefulWidget {
  final String image_url;
  final String title;
  final String name;

  const item({Key key, this.image_url, this.title, this.name})
      : super(key: key);

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
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.title,
                maxLines: 1,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 13.0,
                ),
              ),
              Text(
                widget.name,
                maxLines: 1,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 13.0, color: Colors.black38),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
