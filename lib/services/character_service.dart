import 'dart:convert';

import 'package:http/http.dart';
import 'package:practica_obligatoria/models/character_model.dart';

final String _url = 'https://akabab.github.io/starwars-api/api/';
final String _all = 'all.json';

class CharacterService {
  static Future<List<Character>> getAllCharacters() async {
    Response response = await get(Uri.parse('$_url$_all'));

    if (response.statusCode != 200) {
      throw Exception('HTTP ${response.statusCode}');
    }

    final List<dynamic> data = jsonDecode(response.body);
    await Future.delayed(Duration(seconds: 1));
    return data
        .map((e) => Character.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  static Future<Character?> getCharacter(int id) async {
    final response = await get(Uri.parse('$_url/id/$id.json'));

    if (response.statusCode != 200) return null;
    await Future.delayed(Duration(seconds: 1));
    return Character.fromJson(jsonDecode(response.body));
  }
}
