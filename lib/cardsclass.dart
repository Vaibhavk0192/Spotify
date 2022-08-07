import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF131213),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: 55,
            color: Color(0xFF535252),
            child: Center(
              child: TextField(
                style: TextStyle(height: 1.6, fontSize: 15, letterSpacing: 0.5),
                cursorHeight: 25,
                cursorColor: Color(0xFF1ed760),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.white70,
                    ),
                    hintText: "Search query",
                    prefixIcon: IconButton(
                      icon:Icon(Icons.arrow_back,
                        size: 25,),
                      onPressed: ()=>Navigator.pop(context),

                      color: Colors.white,
                    ),
                    suffixIcon: Icon(
                      Icons.camera_alt_outlined,
                      size: 27,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(0, 13, 0, 0)),
              ),
            ),
          ),
        ));
  }
}
