import 'dart:ffi';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:marquee/marquee.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotify/PlayerButtons.dart';
import 'package:spotify/manager.dart';
import 'package:spotify/pagemanager.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF131213),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Entypo.down_open_big,
                        size: 20,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: 'PLAYING FROM PLAYLIST',
                            style: TextStyle(
                              fontFamily: 'gontham1',
                              fontSize: 9,
                              letterSpacing: 0.7,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '\nFavourite',
                                style: TextStyle(
                                  fontFamily: 'gontham2',
                                  height: 1.3,
                                  fontSize: 12,
                                  // letterSpacing: 0.7,
                                ),
                              )
                            ]),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Octicons.kebab_vertical,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 320,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(
                      'assests/images/ab67616d0000b273c5545f737b16ad5ee767b62a.jpg',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),

                  width: double.infinity,

                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Kaise Hua',
                            style: TextStyle(
                                fontFamily: 'gontham2',
                                height: 1.4,
                                fontSize: 20,
                                wordSpacing: 2)),

                        Text('Vishal Mishra',
                            style: TextStyle(
                              color: Colors.grey,
                                fontFamily: 'gontham1',
                                height: 1.3,
                                fontSize: 16,
                                wordSpacing: 2)),

                      ]),

                  // PlayerButtons(_audioPlayer)
                ),
                SizedBox(height: 20,),
                MyApp()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
