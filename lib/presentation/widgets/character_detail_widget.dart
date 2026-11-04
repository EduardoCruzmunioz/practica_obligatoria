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
      // [Padding]: Espaciado exterior para separar la tarjeta de los bordes
      child: Padding(
        padding: EdgeInsets.all(16),
        // [Container]: Contenedor visual que delimita la tarjeta con borde y esquinas redondeadas
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromARGB(8, 0, 0, 0),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Color.fromARGB(100, 255, 193, 7)),
          ),
          // [Column]: Organiza verticalmente la imagen, textos y botón de acción
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // [Image]: Imagen del personaje desde la red con fallback a [Icon]
              character.image.isNotEmpty
                  ? Image.network(
                      character.image,
                      height: 250,
                      fit: BoxFit.cover,
                      // Headers con User-Agent para evitar el bloqueo 403 Forbidden por parte de CDNs como Wikia/Cloudflare
                      headers: {
                        'User-Agent':
                            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
                      },
                      // Si la URL falla o devuelve un código de error, muestra el icono de reemplazo limpiamente
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
              // [SizedBox]: Espaciador vertical
              SizedBox(height: 16),
              // [ElevatedButton]: Botón con relieve para volver a la lista principal
              ElevatedButton(
                onPressed: onBack,
                child: Text('Volver'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
