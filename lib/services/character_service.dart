import 'dart:convert';

import 'package:http/http.dart';
import 'package:practica_obligatoria/models/character_model.dart';

// URL base de la API pública de Star Wars y ruta del archivo con todos los personajes.
// Para probar el estado de error en la defensa, basta con cambiar una letra aquí (ej. 'all_error.json').
final String _url = 'https://akabab.github.io/starwars-api/api/';
final String _all = 'all.json';

// Servicio encargado de realizar las peticiones HTTP a la API de Star Wars.
class CharacterService {
  // Obtiene la lista completa de personajes desde la API.
  static Future<List<Character>> getAllCharacters() async {
    // 1. Lanzamos la petición GET con el paquete http
    Response response = await get(Uri.parse('$_url$_all'));

    // 2. Comprobamos el statusCode antes de leer el cuerpo (si no es 200 OK, lanzamos excepción)
    if (response.statusCode != 200) {
      throw Exception('HTTP ${response.statusCode}');
    }

    // 3. Decodificamos el cuerpo JSON en una lista dinámica y la convertimos a objetos Character
    final List<dynamic> data = jsonDecode(response.body);
    await Future.delayed(Duration(seconds: 1));
    return data
        .map((e) => Character.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
