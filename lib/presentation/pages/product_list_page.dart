import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final List<Map<String, String>> products = [
    {'name': 'Producto 1', 'description': 'Descripción de Producto 1'},
    {'name': 'Producto 2', 'description': 'Descripción de Producto 2'},
    {'name': 'Producto 3', 'description': 'Descripción de Producto 3'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Productos'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () async {
              final newProduct = await Navigator.pushNamed(
                context,
                '/crearProducto',
              );
              if (newProduct != null) {
                setState(() {
                  products.add(newProduct as Map<String, String>);
                });
              }
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]['name']!),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/productDetail',
                arguments: products[index],
              );
            },
          );
        },
      ),
    );
  }
}
