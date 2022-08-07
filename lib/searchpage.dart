import 'package:flutter/rendering.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:flutter/material.dart';
import 'package:spotify/cardsclass.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // List <Cardclass> card=[
  //   Cardclass(images:'img.png'),
  //   Cardclass(images:'img1.png'),
  //   Cardclass(images:'img.png'),
  //   Cardclass(images:'img.png'),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF131213),
        body: SafeArea(
            child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(17, 43, 17, 35),
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'gontham2',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SearchBar(),
              Padding(
                padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
                child: Text('Your top genres',
                    style: TextStyle(
                        fontFamily: 'gontham2',
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              Cards('assests/images/cards/img.png',
                  'assests/images/cards/img1.png'),
              Cards('assests/images/cards/img_3.png',
                  'assests/images/cards/img_1.png'),
              // Cards(),
              // Cards(),
              // Cards(),
              // Cards(),
              // Cards(),
              // Cards(),
              // Cards(),
            ],
          )
        ])));
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
        });

        },
      child: Padding(
        padding: EdgeInsets.fromLTRB(17, 0, 17, 17),
        child: Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Row(

            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Octicons.search,
                  color: Colors.black,
                  size: 21,
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                  child: Text(
                    'Artists, songs, or podcasts',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontFamily: 'gontham2',
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

  Widget Cards(String a, String b) {
    return Row(children: [
      Expanded(
          child: Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: Card(
                child: Container(
                    height: 86,
                    width: 86,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image(
                        image: AssetImage(a),
                        fit: BoxFit.cover,
                      ),
                    )),
              ))),
      SizedBox(
        width: 10,
      ),
      Expanded(
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 10, 5),
              child: Card(
                child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image(
                        image: AssetImage(b),
                      ),
                    )),
              )))
    ]);
  }

