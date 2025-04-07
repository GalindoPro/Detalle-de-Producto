import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    return Scaffold(
      appBar: AppBar(title: Text('Detalle del Producto')),
      body: Center(
        child:
            product != null
                ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Nombre: ${product['name']}'),
                    Text('Descripción: ${product['description']}'),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Volver'),
                    ),
                  ],
                )
                : Text('Producto no encontrado'),
      ),
    );
  }
}
