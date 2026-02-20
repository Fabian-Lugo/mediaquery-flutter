import 'package:flutter/material.dart';

class ClassScrolls extends StatelessWidget {
  const ClassScrolls({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> libros = [
      {'titulo': 'Cien años de soledad', 'autor': 'Gabriel García Márquez'},
      {'titulo': 'Don Quijote de la Mancha', 'autor': 'Miguel de Cervantes'},
      {'titulo': 'El principito', 'autor': 'Antoine de Saint-Exupéry'},
      {'titulo': '1984', 'autor': 'George Orwell'},
      {'titulo': 'La sombra del viento', 'autor': 'Carlos Ruiz Zafón'},
      {'titulo': 'Rayuela', 'autor': 'Julio Cortázar'},
      {'titulo': 'Crimen y castigo', 'autor': 'Fiódor Dostoyevski'},
      {'titulo': 'Orgullo y prejuicio', 'autor': 'Jane Austen'},
      {'titulo': 'Los juegos del hambre', 'autor': 'Suzanne Collins'},
      {'titulo': 'Harry Potter y la piedra filosofal', 'autor': 'J.K. Rowling'},
    ];

    return Scaffold(
      appBar:  AppBar(
        title: const Text('Libreria Ejemplo Scrolls'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.campaign, color: Colors.deepPurple),
                        SizedBox(width: 8),
                        Text('Informacion Importante',
                        style: TextStyle(fontSize: 18, fontWeight: .bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '''¡Tenemos grandes noticias!
Pronto podras comprar todos tus libros directamente desde nuestra aplicación
Mantente atento a nuestra proxima actualización''',
                    ),  
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.only(bottom: 16),
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: libros.length,
                  itemBuilder: (context, index) {
                    final libro = libros[index];
                    return ListTile(
                      leading: const Icon(Icons.book, color: Colors.blueAccent),
                      title: Text(libro['titulo']!),
                      subtitle: Text(libro['autor']!),
                    );
                  },
                ),
              ),
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.only(bottom: 16),
              child: SizedBox(
                height: 250,
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: List.generate(
                    9,
                    (index) => Container(
                      color: Colors.primaries[index % Colors.primaries.length],
                      child: const Center(
                        child: Text('Imagen de libro',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: .bold,
                        ),
                        textAlign: .center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              'Desplazate hacia arriba o abajo para ver todo el contenido.',
              textAlign: .center,
              style: TextStyle(
                fontStyle: .italic
              ),
            ),
          ],
        ),
      ),
    );
  }
}