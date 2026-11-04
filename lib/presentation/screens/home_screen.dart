import 'package:flutter/material.dart';
import 'package:practica_obligatoria/models/character_model.dart';
import 'package:practica_obligatoria/presentation/widgets/character_detail_widget.dart';
import 'package:practica_obligatoria/presentation/widgets/character_tile_widget.dart';
import 'package:practica_obligatoria/services/character_service.dart';

// Pantalla principal con estado (StatefulWidget) para gestionar qué personaje se muestra
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Índice del personaje seleccionado (-1 indica que se muestra la lista completa)
  int personajeAPintar = -1;

  // Guardamos la petición futura para no volver a descargar los datos al usar setState
  final Future<List<Character>> futurePersonajes =
      CharacterService.getAllCharacters();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // [AppBar]: Barra superior temática personalizada de Star Wars
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
      // [SafeArea]: Asegura que el contenido respete las zonas seguras del dispositivo
      body: SafeArea(
        child: Center(
          // FutureBuilder escucha el estado de la petición asíncrona a la API
          child: FutureBuilder<List<Character>>(
            future: futurePersonajes,
            builder: (context, snapshot) {
              // Mientras la petición está en curso, mostramos un indicador de carga
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }

              // Obtenemos los personajes recibidos
              final lista = snapshot.data ?? [];

              // Si la respuesta llegó vacía
              if (lista.isEmpty) {
                return Text('La lista llegó vacía');
              }

              // Si no hay personaje seleccionado (-1), mostramos la lista; si no, mostramos el detalle
              return (personajeAPintar == -1)
                  ? ListView.builder(
                      itemCount: lista.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            personajeAPintar = index;
                            setState(() {});
                          },
                          child: CharacterTile(character: lista[index]),
                        );
                      },
                    )
                  : Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CharacterDetail(character: lista[personajeAPintar]),
                          // [ElevatedButton]: Botón para volver a la lista principal
                          ElevatedButton(
                            onPressed: () {
                              personajeAPintar = -1;
                              setState(() {});
                            },
                            child: Text('Volver'),
                          ),
                        ],
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
