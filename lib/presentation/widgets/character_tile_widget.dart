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
      // [CircleAvatar]: Contenedor circular temático del avatar
      leading: CircleAvatar(
        backgroundColor: Color.fromARGB(50, 255, 193, 7),
        child: ClipOval(
          child: character.image.isNotEmpty
              ? Image.network(
                  character.image,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                  // Headers con User-Agent para evitar que servidores como Wikia/Cloudflare devuelvan error 403 Forbidden
                  headers: {
                    'User-Agent':
                        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
                  },
                  // Manejo de errores: si la imagen remota falla o da 403/404, mostramos el icono por defecto sin romper la interfaz
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.person, color: Colors.amber),
                )
              : Icon(Icons.person, color: Colors.amber),
        ),
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
