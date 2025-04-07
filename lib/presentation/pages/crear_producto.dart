import 'package:flutter/material.dart';

class CrearProductoPage extends StatefulWidget {
  @override
  _CrearProductoPageState createState() => _CrearProductoPageState();
}

class _CrearProductoPageState extends State<CrearProductoPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  List<Map<String, String>> products = []; // Lista para almacenar productos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crear Producto')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Campo para ingresar el nombre del producto
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nombre del Producto',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          // Campo para ingresar la descripción del producto
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: 'Descripción',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20), // Espaciado
          // Botón para guardar el producto
          ElevatedButton(
            onPressed: () {
              if (_nameController.text.isNotEmpty &&
                  _descriptionController.text.isNotEmpty) {
                setState(() {
                  // Guardar producto en la lista
                  products.add({
                    'name': _nameController.text,
                    'description': _descriptionController.text,
                  });
                });
                _nameController.clear();
                _descriptionController.clear();
              }
            },
            child: Text('Guardar Producto'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
          ),
          SizedBox(height: 20), // Espaciado
          // Botón para mostrar la lista de productos (si hay productos guardados)
          if (products.isNotEmpty)
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(products[index]['name']!),
                          subtitle: Text(products[index]['description']!),
                        );
                      },
                    );
                  },
                );
              },
              child: Text('Lista de Productos'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
        ],
      ),
    );
  }
}
