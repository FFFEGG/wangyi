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
      icon: Image.asset('images/nav1.png',width: 25.0,),
      activeIcon: Image.asset('images/nav1_1.png',width: 25.0,),
      title: Text(
        '发现',
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('images/nav2.png',width: 25.0,),
      activeIcon: Image.asset('images/nav2_2.png',width: 25.0,),
      title: Text(
        '视频',
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('images/nav3.png',width: 25.0,),
      activeIcon: Image.asset('images/nav3_3.png',width: 25.0,),
      title: Text(
        '我的',
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('images/nav4.png',width: 25.0,),
      activeIcon: Image.asset('images/nav4_4.png',width: 25.0,),
      title: Text(
        '朋友',
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('images/nav5.png',width: 25.0,),
      activeIcon: Image.asset('images/nav5_5.png',width: 25.0,),
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
