import 'package:flutter/material.dart';

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

class OneTab extends StatefulWidget {
  OneTab({Key key}) : super(key: key);

  @override
  _OneTabState createState() => _OneTabState();
}

class _OneTabState extends State<OneTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Tab One'),
    );
  }
}

class TwoTab extends StatefulWidget {
  TwoTab({Key key}) : super(key: key);

  @override
  _TwoTabState createState() => _TwoTabState();
}

class _TwoTabState extends State<TwoTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Second Tab'),
    );
  }
}

class ThirdTab extends StatelessWidget {
  const ThirdTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Third Tab'),
    );
  }
}

class FouthTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Fouth Tab'),
    );
  }
}
