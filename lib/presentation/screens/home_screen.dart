import 'package:flutter/material.dart';
import 'package:practica_obligatoria/models/character_model.dart';
import 'package:practica_obligatoria/presentation/widgets/character_list_widget.dart';
import 'package:practica_obligatoria/services/character_service.dart';

// Pantalla principal que contiene la vista general de la aplicación
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior estándar de Flutter (sin necesidad de PreferredSizeWidget personalizado)
      appBar: AppBar(
        title: Text(
          'STAR WARS',
          style: TextStyle(
            fontFamily: 'StarJedi',
            letterSpacing: 2,
            color: Colors.amberAccent,
          ),
        ),
        elevation: 10,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        // FutureBuilder escucha el estado de la petición asíncrona a la API
        child: FutureBuilder<List<Character>>(
          future: CharacterService.getAllCharacters(),
          builder: (context, snapshot) {
            // Mientras la petición está en curso, mostramos un indicador de carga
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }

            // Si ocurrió un error en la llamada HTTP, lo mostramos en pantalla
            if (snapshot.hasError) {
              debugPrint('ERROR: ${snapshot.error}');
              debugPrint('STACK: ${snapshot.stackTrace}');
              return Padding(
                padding: EdgeInsets.all(16),
                child: Text('Error: ${snapshot.error}'),
              );
            }

            // Obtenemos los personajes recibidos
            final lista = snapshot.data ?? [];

            // Si la respuesta llegó vacía
            if (lista.isEmpty) {
              return Text('La lista llegó vacía');
            }

            // Pintamos la lista de personajes utilizando nuestro widget modularizado
            return CharacterList(personajes: lista);
          },
        ),
      ),
    );
  }
}
