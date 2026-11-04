import 'package:flutter/material.dart';
import 'package:practica_obligatoria/models/character_model.dart';
import 'package:practica_obligatoria/presentation/widgets/character_detail_widget.dart';
import 'package:practica_obligatoria/presentation/widgets/character_tile_widget.dart';

// Widget con estado que gestiona la lista de personajes y la visualización de su detalle
class CharacterList extends StatefulWidget {
  // Lista de personajes recibida desde el FutureBuilder o pantalla padre
  final List<Character> personajes;

  CharacterList({super.key, required this.personajes});

  @override
  State<CharacterList> createState() => _CharacterListState();
}

/// Alias para mantener compatibilidad si se referencia como PintaListaPersonajes
typedef PintaListaPersonajes = CharacterList;

class _CharacterListState extends State<CharacterList> {
  // Índice del personaje seleccionado para mostrar en detalle (-1 indica ninguno)
  int personajeAPintar = -1;

  @override
  Widget build(BuildContext context) {
    // Si hay un personaje seleccionado (índice distinto de -1), mostramos la vista de detalle
    if (personajeAPintar != -1) {
      return CharacterDetail(
        character: widget.personajes[personajeAPintar],
        onBack: () {
          // Al pulsar volver, restablecemos el índice a -1 para regresar a la lista
          setState(() {
            personajeAPintar = -1;
          });
        },
      );
    }

    // Si no hay ningún personaje seleccionado, construimos el listado con scroll
    return ListView.builder(
      itemCount: widget.personajes.length,
      itemBuilder: (BuildContext context, int index) {
        final character = widget.personajes[index];
        // Renderizamos cada fila utilizando el componente CharacterTile
        return CharacterTile(
          character: character,
          onTap: () {
            // Al pulsar una fila, guardamos el índice y reconstruimos el widget para ver el detalle
            setState(() {
              personajeAPintar = index;
            });
          },
        );
      },
    );
  }
}
