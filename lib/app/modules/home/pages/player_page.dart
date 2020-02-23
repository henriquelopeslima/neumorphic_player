import 'package:flutter/material.dart';
import 'package:music_player/app/modules/home/utils/constants.dart';
import 'package:music_player/app/modules/home/widgets/soft_control.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircularSoftButton(
                  icon: Icon(Icons.arrow_back_ios),
                  radius: 26,
                ),
                Text(
                  'Fav, Album',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                CircularSoftButton(
                  icon: Icon(Icons.more_horiz),
                  radius: 26,
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width - 150,
                  height: MediaQuery.of(context).size.width - 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width),
                    gradient: LinearGradient(
                      colors: [
                        shadowColor,
                        lightShadowColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        offset: Offset(8, 6),
                        blurRadius: 12,
                      ),
                      BoxShadow(
                        color: lightShadowColor,
                        offset: Offset(-8, -6),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  right: 10,
                  bottom: 10,
                  child: CircleAvatar(
                    backgroundColor: seekbarDarkColors,
                    backgroundImage:
                        Image.asset('assets/nina-drobev.png').image,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Life Is Good (feat. Drake)',
              style: TextStyle(fontSize: 22.0, color: textColor),
            ),
            Text(
              'Future',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
            SizedBox(
              height: 32,
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  width: double.infinity,
                  height: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: lightShadowColor,
                        offset: Offset(1, 4),
                      ),
                      BoxShadow(
                        color: shadowColor,
                        offset: Offset(-1, -4),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 2,
                  bottom: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 36),
                    width: 200,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      gradient: LinearGradient(
                        colors: [
                          seekbarLightColors,
                          seekbarDarkColors,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '1:30',
                    style: TextStyle(fontSize: 14, color: textColor),
                  ),
                  Text(
                    '3:52',
                    style: TextStyle(fontSize: 14, color: textColor),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircularSoftButton(
                  icon: Icon(
                    Icons.skip_previous,
                  ),
                  radius: 26,
                ),
                CircularSoftButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: seekbarDarkColors,
                    size: 48,
                  ),
                ),
                CircularSoftButton(
                  icon: Icon(Icons.skip_next),
                  radius: 26,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
