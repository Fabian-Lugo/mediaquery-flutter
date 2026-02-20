import 'package:flutter/material.dart';
 
class GridViewTest extends StatelessWidget {
  const GridViewTest({super.key});

  final List<String> fruits = const [
    'Manzana',
    'Sandia',
    'Naranja',
    'Mandarina',
    'Melocoton',
    'Uva',
    'Banana',
    'Mango',
    'Fresa',
    'Pera',
    'Piña',
    'Limon',
    'Kiwi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuadricula ListView'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(8.0), //Margen externo para que el grid no toque los bordes
        child: GridView.builder(
          itemCount: fruits.length, //Cantidad total de elementos a renderizar
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  //Define la estructura del grid
            crossAxisCount: 2, //Número de columnas en el eje horizontal
            crossAxisSpacing: 10, //Espaciado horizontal entre celdas
            mainAxisSpacing: 10, //Espaciado vertical entre celdas
            childAspectRatio: 1, //Relación de aspecto (1.0 = cuadrado perfecto)
          ),
          itemBuilder:(context, index) { //itemBuilder construye cada celda bajo demanda según su índice
            return GestureDetector(
              onTap:() {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Seleccioneste: ${fruits[index]}'))
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal.shade100,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [ //Le damos sombra
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(2, 2), //Desplazamiento de la sombra (x, y)
                    ),
                  ],
                ),
                child: Center(
                  child: Text( 
                    fruits[index], // Acceso al dato específico mediante el índice
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}