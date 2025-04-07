import 'package:flutter/material.dart';

class CrearProducto extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crear Producto')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nombre del Producto'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Descripción'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newProduct = {
                  'name': _nameController.text,
                  'description': _descriptionController.text,
                };
                Navigator.pop(context, newProduct);
              },
              child: Text('Guardar Producto'),
            ),
          ],
        ),
      ),
    );
  }
}
