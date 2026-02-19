import 'package:flutter/material.dart';
 
class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Widget expanded'),
      ),
      body: Row(
        children: [
          Expanded( //Toma las dimenciones horizontal o vertical del movil
            child: Container(
              color: Colors.orange,
              height: 100,
              child: const Center(
                child: Text('Home',
                  style: TextStyle(
                    fontFamily: 'Poppins', 
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded( //Toma las dimenciones horizontal o vertical del movil
          flex: 2, //Hace que ocupe el doble de espacio que el Expanded 1
            child: Container(
              color: Colors.green,
              height: 100,
              child: const Center(
                child: Text('Menu Principal',
                  style: TextStyle(
                    fontFamily: 'Poppins', 
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded( //Toma las dimenciones horizontal o vertical del movil
            child: Container(
              color: Colors.blue,
              height: 100,
              child: const Center(
                child: Text('Contacto',
                  style: TextStyle(
                    fontFamily: 'Poppins', 
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}