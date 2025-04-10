// Importamos los paquetes necesarios
import 'package:flutter/material.dart';
import 'package:laboratorio/presentation/pages/product_detail_page.dart';
import 'package:laboratorio/presentation/pages/product_list_page.dart';

// Función main que es el punto de entrada de la aplicación
void main() {
  // Inicializamos y ejecutamos la aplicación
  runApp(const MyApp());
}

// Clase MyApp que hereda de StatelessWidget
class MyApp extends StatelessWidget {
  // Constructor de la clase que acepta un key opcional
  const MyApp({super.key});

  // Método build que construye la interfaz gráfica
  @override
  Widget build(BuildContext context) {
    // Retornamos un MaterialApp que es el widget raíz de una aplicación Material Design
    return MaterialApp(
      // Título de la aplicación que aparece en la barra de estado del dispositivo
      title: 'Productos App',
      // Tema de la aplicación que define los colores y estilos
      theme: ThemeData(
        // Color principal de la aplicación
        primarySwatch: Colors.blue,
      ),
      // Pantalla inicial de la aplicación
      home: const ProductListPage(),
      // Configuración de las rutas de navegación
      routes: {
        // Ruta '/productDetail' que muestra la pantalla de detalles del producto
        '/productDetail': (context) => ProductDetailPage(),
      },
    );
  }
}
