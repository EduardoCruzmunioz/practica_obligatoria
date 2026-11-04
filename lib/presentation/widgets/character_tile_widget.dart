import 'package:flutter/material.dart';
import 'package:practica_obligatoria/models/character_model.dart';
import 'package:practica_obligatoria/utils/traducciones_utils.dart';

// Widget sin estado (StatelessWidget) que representa una fila individual de la lista
class CharacterTile extends StatelessWidget {
  // Datos del personaje a mostrar
  final Character character;

  CharacterTile({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // [Image] / [Icon]: Imagen del personaje; si falla o no tiene, muestra el icono por defecto
      leading: Image.network(
        character.image,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Icon(Icons.person),
      ),
      // [Text]: Nombre del personaje
      title: Text(character.name),
      // [Text]: Género del personaje traducido al español
      subtitle: Text(traducirGenero(character.gender), maxLines: 1),
      // [Icon]: Icono de flecha indicativa a la derecha
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}
