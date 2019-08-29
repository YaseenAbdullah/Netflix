import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(Netflix());

class Netflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Netflix Clone",
      theme: ThemeData(primaryColor: Colors.black),
      home: NetflixTabBar(),
    );
  }
}

class NetflixTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Theme(
        data: ThemeData(brightness: Brightness.dark),
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.tv),
                text: "Soon",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.download),
                text: "Downloads",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.bars),
                text: "More",
              ),
            ],
            unselectedLabelColor: Color(0xff999999),
            labelColor: Colors.white,
            indicatorColor: Colors.transparent,
          ),
          body: TabBarView(children: [
            HomeScreen(),
            Center(child: Text("page 2")),
            Center(child: Text("page 3")),
            Center(child: Text("page 4")),
            Center(child: Text("page 5")),
          ]),
        ),
      ),
    );
  }
}
