import 'package:flutter/material.dart';
import 'package:laboratorio/presentation/pages/crear_producto.dart';
import 'package:laboratorio/presentation/pages/product_detail_page.dart';
import 'package:laboratorio/presentation/pages/product_list_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/productList',
      routes: {
        '/productList': (context) => ProductListPage(),
        '/productDetail': (context) => ProductDetailPage(),
        '/crearProducto': (context) => CrearProducto(),
      },
    ),
  );
}
