import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final List<Map<String, String>> products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingresar Productos'),
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
