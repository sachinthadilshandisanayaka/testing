import 'package:flutter/material.dart';
import 'package:project02/tabs/third/third_tabFour.dart';
import 'package:project02/tabs/third/third_tabOne.dart';
import 'package:project02/tabs/third/third_tabThree.dart';
import 'package:project02/tabs/third/third_tabTwo.dart';

class ThirdActivity extends StatefulWidget {
  ThirdActivity({Key key}) : super(key: key);

  @override
  _ThirdActivityState createState() => _ThirdActivityState();
}

class _ThirdActivityState extends State<ThirdActivity>
    with SingleTickerProviderStateMixin {
  //with SingleTickePS is neccessery for to
  TabController _tabController; // use this TabController
  ScrollController _scrollViewController; // and ScrollController

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _scrollViewController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _scrollViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 4,
    //   child: Scaffold(
    //       appBar: AppBar(
    //         title: Text('Third Page'),
    //         bottom: TabBar(
    //           tabs: <Widget>[
    //             Tab(
    //               icon: Icon(Icons.home),
    //               text: 'Home',
    //             ),
    //             Tab(
    //               icon: Icon(Icons.phone),
    //               text: 'More',
    //             ),
    //             Tab(
    //               icon: Icon(Icons.help),
    //               text: 'Help',
    //             ),
    //             Tab(
    //               icon: Icon(Icons.message),
    //               text: 'Message',
    //             ),
    //           ],
    //         ),
    //       ),
    //       body: TabBarView(
    //         children: <Widget>[
    //           OneTab(),
    //           TwoTab(),
    //           ThirdTab(),
    //           FouthTab(),
    //         ],
    //       ),
    //     ),
    // );
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScroll) {
          return <Widget>[
            SliverAppBar(
              title: Text('Tab Controller'),
              pinned: true,
              floating: true,
              forceElevated: boxIsScroll,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.home),
                    text: 'Home',
                  ),
                  Tab(
                    icon: Icon(Icons.phone),
                    text: 'More',
                  ),
                  Tab(
                    icon: Icon(Icons.help),
                    text: 'Help',
                  ),
                  Tab(
                    icon: Icon(Icons.message),
                    text: 'Message',
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            OneTab(),
            TwoTab(),
            ThirdTab(),
            FouthTab(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}