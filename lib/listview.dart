import 'package:flutter/material.dart';
 
class ListViewTest extends StatelessWidget {
  const ListViewTest({super.key});

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
    'Arandano',
    'Frambuesa',
    'Cereza',
    'Ciruela',
    'Higo',
    'Granada',
    'Papaya',
    'Guayaba',
    'Maracuya',
    'Coco',
    'Melon',
    'Aguacate',
    'Chirimoya',
    'Guanabana',
    'Dátil',
    'Kaki',
    'Litchi',
    'Mamey',
    'Nispero',
    'Pistacho',
    'Pomelo',
    'Tamarindo',
    'Zarzamora',
    'Grosella',
    'Membrillo',
    'Pitaya',
    'Carambola',
    'Caimito',
    'Zapote',
    'Grosella negra',
    'Higo chumbo',
    'Rambután',
    'Mangostán',
    'Arándano rojo',
    'Endrina',
    'Nectarina',
    'Goji',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo ListView'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder( //Constructor para listas largas
        itemCount: fruits.length, //Total de elementos
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.local_grocery_store), //Icono izquierdo
            title: Text('Fruta Numero: ${index + 1}'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16), //Icono derecho
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Seleccionaste: ${fruits[index]}'))
              );
            },
          );
        },
      ),
    );
  }
}