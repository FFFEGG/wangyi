import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wangyi/pages/index_gxtj.dart';

class indexpage extends StatefulWidget {
  @override
  _indexpageState createState() => _indexpageState();
}

class _indexpageState extends State<indexpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              'images/mic.png',
              width: 5.0,
              height: 5.0,
            ),
          ),
          title: Container(
            margin: EdgeInsets.all(10.0),
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.white30),
              color: Colors.white30,
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Icon(
                  Icons.search,
                  size: 20.0,
                  color: Colors.white54,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '大家都在搜',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '龙卷风',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Transform.rotate(
              child: Icon(Icons.format_align_left),
              angle: -1.6,
            ),
            SizedBox(
              width: 16.0,
            ),
          ],
          bottom: TabBar(
//            //激活状态
//            unselectedLabelColor: Colors.white30,
//            //选中下先
//            indicatorColor: Colors.white30,
//            //大小
            indicatorSize: TabBarIndicatorSize.label,
////            //宽度
////            indicatorWeight: 1.0,
            tabs: [
              Tab(
                child: Text('个性推荐'),
              ),
              Tab(
                child: Text('主播电台'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            index_gxtj(),
            Container(
              child: Text('主播电台'),
            ),
          ],
        ),
      ),
    );
  }
}
