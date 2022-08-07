import 'package:flutter/material.dart';
import 'package:spotify/tabbar.dart';



void main() {
  runApp(MaterialApp());
}

class Rootapk extends StatefulWidget {
  const Rootapk({Key? key}) : super(key: key);

  @override
  State<Rootapk> createState() => _RootapkState();
}

class _RootapkState extends State<Rootapk> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,

      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black.withOpacity(0.1),
        brightness: Brightness.dark,
        bottomNavigationBarTheme:BottomNavigationBarThemeData(
            backgroundColor: Colors.white10.withOpacity(0.1),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 12,

        ),
        unselectedLabelStyle:TextStyle(
          fontSize: 12
        ) )
      ),
      home: Tabbar(),
    );
  }
}
