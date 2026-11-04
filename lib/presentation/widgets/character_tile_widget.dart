import 'package:flutter/material.dart';
import 'package:practica_obligatoria/models/character_model.dart';
import 'package:practica_obligatoria/utils/traducciones_utils.dart';

// Widget que representa un elemento individual de la lista de personajes
class CharacterTile extends StatelessWidget {
  // Datos del personaje a mostrar
  final Character character;
  // Acción que se ejecuta al pulsar sobre el elemento
  final VoidCallback onTap;

  CharacterTile({super.key, required this.character, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // [CircleAvatar]: Muestra el avatar redondeado del personaje o un icono por defecto
      leading: CircleAvatar(
        backgroundColor: Color.fromARGB(50, 255, 193, 7),
        backgroundImage: character.image.isNotEmpty ? NetworkImage(character.image) : null,
        child: character.image.isEmpty ? Icon(Icons.person, color: Colors.amber) : null,
      ),
      // [Text]: Nombre del personaje
      title: Text(character.name),
      // [Text]: Género del personaje traducido al español
      subtitle: Text(traducirGenero(character.gender), maxLines: 1),
      // [IconButton] e [Icon]: Botón interactivo con icono de flecha
      trailing: IconButton(
        icon: Icon(Icons.arrow_forward_ios, size: 16),
        onPressed: onTap,
      ),
      // Al pulsar la fila completa también se abre la vista de detalle
      onTap: onTap,
    );
  }
}
