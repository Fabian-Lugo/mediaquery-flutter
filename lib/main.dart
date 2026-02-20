import 'package:flutter/material.dart';
import 'package:mediaquery/scrolls.dart';
//import 'package:mediaquery/card.dart';
//import 'package:mediaquery/listtile.dart';
//import 'package:mediaquery/gridview.dart';
//import 'package:mediaquery/listview.dart';
// import 'package:mediaquery/layoutbuildert.dart';
//import 'package:mediaquery/responsive.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
 // final size = MediaQuery.of(context).size; //Obtiene los diametros de la pantalla del telefono H,W y lo pasa a size
 // final width = size.width;
 // final height = size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClassScrolls()
    );
  }
}