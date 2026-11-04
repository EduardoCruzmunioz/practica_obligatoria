import 'package:flutter/material.dart';
import 'package:practica_obligatoria/models/character_model.dart';
import 'package:practica_obligatoria/utils/traducciones_utils.dart';

// Widget que muestra la información ampliada de un personaje seleccionado
class CharacterDetail extends StatelessWidget {
  // Objeto con la información completa del personaje
  final Character character;
  // Callback para regresar a la lista de personajes
  final VoidCallback onBack;

  CharacterDetail({super.key, required this.character, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Imagen de gran tamaño con manejo de fallos
            character.image.isNotEmpty
                ? Image.network(
                    character.image,
                    height: 250,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Icon(Icons.person, size: 100),
                  )
                : Icon(Icons.person, size: 100),
            SizedBox(height: 16),
            // Nombre del personaje en tamaño grande y negrita
            Text(
              character.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Género y especie del personaje traducidos
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(traducirGenero(character.gender)),
                SizedBox(width: 10),
                Text(traducirEspecie(character.species)),
              ],
            ),
            SizedBox(height: 16),
            // Botón para volver a mostrar el listado principal
            ElevatedButton(onPressed: onBack, child: Text('Volver')),
          ],
        ),
      ),
    );
  }
}
