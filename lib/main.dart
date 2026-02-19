import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size; //Obtiene los diametros de la pantalla del telefono H,W y lo pasa a size
  final width = size.width;
  final height = size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Material AppBar'),
          ),
        ),
        body: Center(
          child: Container(
            width: width * 0.8, //80% del ancho de la pantalla
            height: height * 0.2, //20% del alto de la pantalla
            color: Colors.blue,
            child: Center(
              child: Text('Ancho $width\nAlto: $height',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}