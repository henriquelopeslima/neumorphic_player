import 'package:flutter/material.dart';
import 'package:music_player/app/modules/home/pages/player_page.dart';
import 'package:music_player/app/modules/home/utils/constants.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: PlayerPage(),
    );
  }
}
