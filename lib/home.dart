import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/index_pages.dart';
import 'pages/video_pages.dart';
import 'pages/mine_pages.dart';
import 'pages/friend_pages.dart';
import 'pages/user_pages.dart';


class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final List<BottomNavigationBarItem> bottomnavs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.music_note),
      title: Text(
        '发现',
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.video_label),
      title: Text(
        '视频',
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.headset_mic),
      title: Text(
        '我的',
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people_outline),
      title: Text(
        '朋友',
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.perm_identity),
      title: Text(
        '账号',
      ),
    ),
  ];

  final List pages = [
    indexpage(),
    video_pages(),
    mine_pages(),
    friend_pages(),
    user_pages(),
  ];

  int active = 0;
  var acitvepages;

  @override
  void initState() {
    setState(() {
      acitvepages = pages[active];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: active,
        items: bottomnavs,
        onTap: (index) {
          setState(() {
            active = index;
            acitvepages = pages[index];
          });
        },
      ),
      body: acitvepages,
    );
  }
}
