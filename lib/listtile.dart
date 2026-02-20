import 'package:flutter/material.dart';

class ListTileTest extends StatelessWidget {
  const ListTileTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo ListTile'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Usuario: Test ListTile'),
            subtitle: Text('Test de subtitulo'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Hola',
                  style: TextStyle(fontSize: 20, fontWeight: .bold)
                  ),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.red ,
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email test'),
            subtitle: Text('test@emailexample.com'),
            trailing: Icon(Icons.circle),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Hola',
                  style: TextStyle(fontSize: 20, fontWeight: .bold)
                  ),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.red ,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}