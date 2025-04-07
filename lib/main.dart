import 'package:flutter/material.dart';
import 'package:laboratorio/presentation/pages/crear_producto.dart';
import 'package:laboratorio/presentation/pages/pantalla_principal.dart';
import 'package:laboratorio/presentation/pages/product_detail_page.dart';
import 'package:laboratorio/presentation/pages/product_list_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la bandera de depuración
      initialRoute: '/home', // Ruta inicial
      routes: {
        '/home': (context) => HomePage(), // Pantalla principal
        '/productList': (context) => ProductListPage(), // Lista de productos
        '/productDetail':
            (context) => ProductDetailPage(), // Detalles del producto
        '/crearProducto': (context) => CrearProductoPage(), // Crear producto
      },
    ),
  );
}
