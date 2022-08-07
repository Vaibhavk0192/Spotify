import 'package:flutter/material.dart';
import 'package:spotify/homepage.dart';
import 'package:spotify/librarypage.dart';
import 'package:spotify/profilepage.dart';
import 'package:spotify/searchpage.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        currentIndex: _selectedTab,
        onTap: (index){
          setState((){
            this._selectedTab=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.home_outlined),
      label: "Home",

          ),BottomNavigationBarItem(icon: Icon(
            Icons.search_rounded),
      label: "Search",

          ),BottomNavigationBarItem(icon: Icon(
            Icons.library_music),
      label: "Your Library",

          ),BottomNavigationBarItem(icon: Icon(
            Icons.person),
      label: "Profile",

          )
        ],
      ),
      body: Stack(


        children: [
          renderView(0, HomePage()),
          renderView(1, SearchPage()),
          renderView(2, LibraryPage()),
          renderView(3, ProfilePage()),

        ],
      ),
    );
  }
  Widget renderView(int tabIndex,Widget view)
  {
    return IgnorePointer(

      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab==tabIndex?1:0,
        child: view,
      ),
    );
  }
}
