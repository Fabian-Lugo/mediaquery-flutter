import 'package:flutter/material.dart';

class CardsTest extends StatelessWidget {
  const CardsTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Cards'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsetsGeometry.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Column(
              mainAxisSize: .min,
              crossAxisAlignment: .start,
              children: [
                Text('Aviso importante',
                style: TextStyle(fontSize: 20, fontWeight: .bold)),
                SizedBox(height: 8,),
                Text('Tienes actualizaciones pendientes en tu aplicación')
              ],
            ),
          ),
        ),
      ),
    );
  }
}