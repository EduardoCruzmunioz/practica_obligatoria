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
      // Imagen o avatar del personaje; si falla la carga o está vacía, muestra un icono por defecto
      leading: character.image.isNotEmpty
          ? Image.network(
              character.image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.person),
            )
          : Icon(Icons.person),
      // Nombre del personaje
      title: Text(character.name),
      // Género del personaje traducido
      subtitle: Text(traducirGenero(character.gender), maxLines: 1),
      // Flecha indicativa de navegación a la derecha
      trailing: Icon(Icons.arrow_forward_ios),
      // Al pulsar, se invoca el callback onTap recibido por parámetro
      onTap: onTap,
    );
  }
}
