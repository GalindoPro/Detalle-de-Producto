import 'package:flutter/material.dart';

// Clase que define una página de lista de productos, la cual es un StatelessWidget (sin estado mutable).
class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de productos, representados como cadenas de texto.
    final products = [
      'Smartphone Ultra Pro',
      'Laptop Gaming X5',
      'Tablet Premium 12',
    ];

    return Scaffold(
      // Contenedor base que define la estructura visual de la página.
      appBar: AppBar(
        // Barra superior con el título de la página.
        title: const Text('Lista de Productos'),
      ),
      body: ListView(
        // Genera una lista desplazable con elementos.
        children:
            products
                .map(
                  // Mapea cada producto para crear un widget tipo ListTile (elemento de lista).
                  (product) => ListTile(
                    // Muestra el nombre del producto como título.
                    title: Text(product),
                    // Define una acción al tocar el elemento de la lista.
                    onTap: () {
                      // Navega a la página de detalles del producto, pasando el producto como argumento.
                      Navigator.pushNamed(
                        context,
                        '/productDetail',
                        arguments: product,
                      );
                    },
                  ),
                )
                .toList(), // Convierte los widgets generados en una lista para el ListView.
      ),
    );
  }
}
