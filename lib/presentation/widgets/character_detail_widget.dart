import 'package:flutter/material.dart';
import 'package:practica_obligatoria/models/character_model.dart';
import 'package:practica_obligatoria/utils/traducciones_utils.dart';

// Widget sin estado (StatelessWidget) que muestra la ficha completa de un personaje
class CharacterDetail extends StatelessWidget {
  // Objeto con la información del personaje
  final Character character;

  CharacterDetail({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    // Preparamos los textos de los indicadores por si algún dato viene null en la API
    String textoAltura = character.height != null
        ? '${character.height} m'
        : 'Desconocida';
    String textoPeso = character.mass != null
        ? '${character.mass} kg'
        : 'Desconocido';
    String textoPlaneta =
        (character.homeworld != null && character.homeworld!.isNotEmpty)
        ? character.homeworld!
        : 'Desconocido';

    // [Padding]: Espaciado exterior de la ficha
    return Padding(
      padding: EdgeInsets.all(16),
      // [Column]: Organiza verticalmente la foto, el nombre, los datos y los indicadores
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
            textAlign: TextAlign.center,
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
          // [SizedBox]: Espaciador antes de la fila de indicadores
          SizedBox(height: 20),
          // [Row] + [Expanded]: Reparte el ancho de la pantalla en 3 partes iguales
          // para mostrar los 3 indicadores de la ficha (Altura, Peso y Planeta).
          Row(
            children: [
              // [Expanded]: Ocupa 1/3 del ancho disponible en la fila
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.height),
                    SizedBox(height: 4),
                    Text(
                      'Altura',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(textoAltura, textAlign: TextAlign.center),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.monitor_weight_outlined),
                    SizedBox(height: 4),
                    Text('Peso', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(textoPeso, textAlign: TextAlign.center),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.public),
                    SizedBox(height: 4),
                    Text(
                      'Planeta',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(textoPlaneta, textAlign: TextAlign.center),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
