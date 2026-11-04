import 'package:flutter/material.dart';
import 'package:practica_obligatoria/models/character_model.dart';
import 'package:practica_obligatoria/utils/traducciones_utils.dart';

// Widget sin estado (StatelessWidget) que muestra la información ampliada de un personaje
class CharacterDetail extends StatelessWidget {
  // Objeto con la información completa del personaje
  final Character character;

  CharacterDetail({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    // [Padding]: Espaciado exterior
    return Padding(
      padding: EdgeInsets.all(16),
      // [Column]: Organiza verticalmente la imagen y los textos del personaje
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // [Image]: Imagen del personaje desde la red con fallback a [Icon]
          character.image.isNotEmpty
              ? Image.network(
                  character.image,
                  height: 250,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.person, size: 100),
                )
              : Icon(Icons.person, size: 100),
          // [SizedBox]: Espaciador vertical
          SizedBox(height: 16),
          // [Text]: Nombre del personaje en tamaño grande y negrita
          Text(
            character.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          // [SizedBox]: Espaciador vertical
          SizedBox(height: 8),
          // [Row]: Organiza horizontalmente el género y la especie
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(traducirGenero(character.gender)),
              // [SizedBox]: Espaciador horizontal entre género y especie
              SizedBox(width: 10),
              Text(traducirEspecie(character.species)),
            ],
          ),
        ],
      ),
    );
  }
}
