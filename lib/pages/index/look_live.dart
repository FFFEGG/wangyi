import 'package:flutter/material.dart';


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
            item(
              image_url: 'https://apic.douyucdn.cn/upload/avatar_v3/201902/1683c28ac917415197e07a23aefd2749_big.jpg?rltime?x-oss-process=image/format,webp',
              name: '9珍珠好吃',
              tag: '小可爱',
              qm: '今天眼睛肿了wuwuw',
            ),
            item(
              image_url: 'https://apic.douyucdn.cn/upload/avatar_v3/201812/71c742ce5a77ff0d8f80a4d14e1ad79e_big.jpg?x-oss-process=image/format,webp',
              name: '莎莎',
              tag: '甜美',
              qm: '你可能是个声控',
            ),
            item(
              image_url: 'https://apic.douyucdn.cn/upload/avatar_v3/201902/256fcd18d6d149faa2ea3dcdc8cfca8f_big.jpg?x-oss-process=image/format,webp',
              name: '陈豆芽',
              tag: '戏精',
              qm: '今天吃头油拌饭～',
            ),
          ],
        ),
      ],
    );
  }
}

class item extends StatefulWidget {

  final String image_url;
  final String play_image = 'images/live.gif';
  final String tag;
  final String name;
  final String qm;

  const item({Key key, this.image_url, this.tag, this.name, this.qm}) : super(key: key);

  @override
  _itemState createState() => _itemState();
}
class _itemState extends State<item> {
  @override
  Widget build(BuildContext context) {
    return  Column(
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
                        widget.image_url),
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
                        widget.play_image,
                        width: 15.0,
                        height: 15.0,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        widget.tag,
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
                      widget.name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Text(
          widget.qm,
          maxLines: 2,
          style: TextStyle(
            fontSize: 13.0,
          ),
        ),
      ],
    );
  }
}
