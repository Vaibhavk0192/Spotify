import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:spotify/cardsclass.dart';
import 'package:spotify/pagemanager.dart';
import 'package:spotify/manager.dart';

import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF131213),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF131213),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1, color: Colors.black, blurRadius: 5)
                      ]),
                  height: 100,
                  width: double.infinity,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 7, 20),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              child: Image(
                                width: 35,
                                color: Colors.pinkAccent,
                                // fit: BoxFit.fitHeight,
                                image: AssetImage(
                                  'assests/images/profile/profile-user.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Your Library",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'gontham2',
                                  fontWeight: FontWeight.bold),
                            ),
                            new Spacer(),
                            Row(children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Search()));
                                  });
                                },
                                icon: Icon(
                                  Octicons.search,
                                  size: 23,
                                ),
                              ),
                              IconButton(
                                alignment: Alignment.centerLeft,
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Search()));
                                  });
                                },
                                icon: Icon(
                                  Icons.add_rounded,
                                  size: 35,
                                ),
                              ),
                            ]),
                          ]))),
              Column(children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 7, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.arrow_up_arrow_down,
                                size: 13,
                              ),
                              alignment: Alignment.center,
                            ),
                            // SizedBox(width: 10,),
                            Text(
                              "Most recent",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'gontham2',
                                // fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            new Spacer(),
                            IconButton(
                              alignment: Alignment.center,
                              onPressed: () {},
                              icon: Icon(
                                Icons.grid_view,
                                size: 18,
                              ),
                            ),
                          ],
                        )),
                    Librarycards(
                        name: "Arijit Singh",
                        image:
                            "https://i.scdn.co/image/ab6761610000e5ebb2b70762d89a9d76c772b3b6"),
                    Librarycards(
                        name: "Ankit Tiwari",
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST88v9BdxZDGFMhFCaeZ2fiBL7k4DisHcUrw&usqp=CAU"),
                    Librarycards(
                        name: "Tulsi Kumar",
                        image:
                            "https://i.scdn.co/image/ab6761610000e5eb90499e6446916def99909236"),
                    Librarycards(
                        name: "Neha Kakkar",
                        image:
                            "https://i.scdn.co/image/ab6761610000e5eb2eb3676d6d03d8872feb0875"),
                    Librarycards(
                        name: "Armaan Malik",
                        image:
                            "https://pbs.twimg.com/profile_images/1540220963245154304/hUN8xbHJ_400x400.jpg"),
                    Librarycards(
                        name: "Pritam",
                        image:
                            "https://i.scdn.co/image/ab6761610000e5ebcb6926f44f620555ba444fca"),
                    Librarycards(
                        name: "A.R. Rahman",
                        image:
                            "https://i.scdn.co/image/ab6761610000e5ebb19af0ea736c6228d6eb539c"),
                    Librarycards(
                        name: "Ariana Grande",
                        image:
                            "https://i.scdn.co/image/ab6761610000e5ebcdce7620dc940db079bf4952"),
                    Librarycards(
                        name: "Dua Lipa",
                        image:
                            "https://i.scdn.co/image/ab6761610000e5ebd42a27db3286b58553da8858"),
                    Librarycards(
                        name: "Justin Bieber",
                        image:
                            "https://i.scdn.co/image/ab6761610000e5eb8ae7f2aaa9817a704a87ea36"),
                    Librarycards(
                        name: "Milind Gaba",
                        image:
                            "https://i.scdn.co/image/ab6761610000e5eb0cd4a939e69bf46f41f0c2eb"),
                  ],
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class Librarycards extends StatefulWidget {
  final String name;
  final String image;

  const Librarycards({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  State<Librarycards> createState() => _LibrarycardsState();
}

class _LibrarycardsState extends State<Librarycards> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp()));
        });
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
        child: Row(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: Color(0xFF131213), width: 1),
                color: Color(0xFF131213),
                image: DecorationImage(
                    image: NetworkImage(
                      widget.image,
                    ),
                    fit: BoxFit.fill)),
            height: 65,
            width: 65,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'gontham1',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text('Artist',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'gontham1',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFa2a3a2)))
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
