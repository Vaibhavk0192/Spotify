
import 'package:spotify/root%20file.dart';
import 'package:spotify/cardsclass.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Rootapk(),
    routes: {
      '/searchbar':(context)=>Search(),
    },
  ));
}

