// Importamos el paquete de Material Design de Flutter que contiene los widgets necesarios
import 'package:flutter/material.dart';

// Creamos una clase llamada ProductDetailPage que hereda de StatelessWidget
class ProductDetailPage extends StatelessWidget {
  // Constructor de la clase que acepta un key opcional
  const ProductDetailPage({super.key});

  // Sobreescribimos el método build que construye la interfaz gráfica
  @override
  Widget build(BuildContext context) {
    // Obtenemos el nombre del producto de los argumentos de la ruta
    final productName = ModalRoute.of(context)?.settings.arguments as String?;

    // Retornamos un Scaffold que es un widget que provee un diseño básico de Material Design
    return Scaffold(
      // Configuramos la barra de aplicaciones
      appBar: AppBar(
        title: const Text(
          'Detalle del Producto',
        ), // Título de la barra de aplicaciones
      ),
      // Configuramos el cuerpo de la pantalla
      body: Center(
        // Centramos el contenido vertical y horizontalmente
        child: Column(
          // Configuramos la alineación de la columna
          mainAxisAlignment: MainAxisAlignment.center,
          // Lista de widgets hijos
          children: [
            // Verificamos si productName no es null
            if (productName != null)
              // Mostramos el nombre del producto con un tamaño de fuente de 20
              Text('Disponible: $productName', style: TextStyle(fontSize: 20))
            else
              // Si productName es null, mostramos un mensaje informando que no se proporcionó un producto
              const Text('No se proporcionó un producto.'),
            // Agregamos un espacio vertical de 20 píxeles
            const SizedBox(height: 20),
            // Botón elevado que al ser presionado ejecuta una acción
            ElevatedButton(
              // Función que se ejecuta al presionar el botón
              onPressed: () {
                // Usamos Navigator.pop para cerrar la pantalla actual y regresar a la anterior
                Navigator.pop(context);
              },
              // Configuramos el texto del botón
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
