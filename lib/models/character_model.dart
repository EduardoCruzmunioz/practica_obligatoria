import 'dart:convert';

// Funciones para serializar y deserializar listas de personajes
List<Character> characterFromJson(String str) => List<Character>.from(
  (json.decode(str) as List).map((x) => Character.fromJson(x)),
);

String characterToJson(List<Character> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

/// Convierte String, número, lista o null en String? (las listas se unen con coma).
String? _asString(dynamic value) {
  if (value == null) return null;
  if (value is List) return value.isEmpty ? null : value.join(', ');
  return value.toString();
}

/// Convierte String suelto, lista o null en `List<String>`.
List<String> _asList(dynamic value) {
  if (value == null) return [];
  if (value is List) return value.map((e) => e.toString()).toList();
  return [value.toString()];
}

// Modelo de datos para representar a un personaje de Star Wars
class Character {
  final int id;
  final String name;
  final double? height;
  final double? mass;
  final String? gender;
  final String? homeworld;
  final String? wiki;
  final String image;
  final String? born;
  final String? bornLocation;
  final String? died;
  final String? diedLocation;
  final String? species;
  final String? hairColor;
  final String? eyeColor;
  final String? skinColor;
  final String? cybernetics;
  final List<String> affiliations;
  final List<String> masters;
  final List<String> apprentices;
  final List<String> formerAffiliations;
  final String? dateCreated;
  final String? dateDestroyed;
  final String? destroyedLocation;
  final String? creator;
  final String? manufacturer;
  final String? model;
  final String? characterClass;
  final String? sensorColor;
  final String? platingColor;
  final String? equipment;
  final String? productLine;
  final String? kajidic;
  final String? era;
  final String? degree;
  final String? armament;

  Character({
    required this.id,
    required this.name,
    this.height,
    this.mass,
    this.gender,
    this.homeworld,
    this.wiki,
    this.image = '',
    this.born,
    this.bornLocation,
    this.died,
    this.diedLocation,
    this.species,
    this.hairColor,
    this.eyeColor,
    this.skinColor,
    this.cybernetics,
    this.affiliations = const [],
    this.masters = const [],
    this.apprentices = const [],
    this.formerAffiliations = const [],
    this.dateCreated,
    this.dateDestroyed,
    this.destroyedLocation,
    this.creator,
    this.manufacturer,
    this.model,
    this.characterClass,
    this.sensorColor,
    this.platingColor,
    this.equipment,
    this.productLine,
    this.kajidic,
    this.era,
    this.degree,
    this.armament,
  });

  // Mapea la respuesta JSON a una instancia de Character
  factory Character.fromJson(Map<String, dynamic> json) => Character(
    id: json['id'] as int,
    name: _asString(json['name']) ?? 'Desconocido',
    height: (json['height'] as num?)?.toDouble(),
    mass: (json['mass'] as num?)?.toDouble(),
    gender: _asString(json['gender']),
    homeworld: _asString(json['homeworld']),
    wiki: _asString(json['wiki']),
    image: _asString(json['image']) ?? '',
    born: _asString(json['born']),
    bornLocation: _asString(json['bornLocation']),
    died: _asString(json['died']),
    diedLocation: _asString(json['diedLocation']),
    species: _asString(json['species']),
    hairColor: _asString(json['hairColor']),
    eyeColor: _asString(json['eyeColor']),
    skinColor: _asString(json['skinColor']),
    cybernetics: _asString(json['cybernetics']),
    affiliations: _asList(json['affiliations']),
    masters: _asList(json['masters']),
    apprentices: _asList(json['apprentices']),
    formerAffiliations: _asList(json['formerAffiliations']),
    dateCreated: _asString(json['dateCreated']),
    dateDestroyed: _asString(json['dateDestroyed']),
    destroyedLocation: _asString(json['destroyedLocation']),
    creator: _asString(json['creator']),
    manufacturer: _asString(json['manufacturer']),
    model: _asString(json['model']),
    characterClass: _asString(json['class']),
    sensorColor: _asString(json['sensorColor']),
    platingColor: _asString(json['platingColor']),
    equipment: _asString(json['equipment']),
    productLine: _asString(json['productLine']),
    kajidic: _asString(json['kajidic']),
    era: _asString(json['era']),
    degree: _asString(json['degree']),
    armament: _asString(json['armament']),
  );

  // Convierte la instancia del modelo en un mapa JSON
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'height': height,
    'mass': mass,
    'gender': gender,
    'homeworld': homeworld,
    'wiki': wiki,
    'image': image,
    'born': born,
    'bornLocation': bornLocation,
    'died': died,
    'diedLocation': diedLocation,
    'species': species,
    'hairColor': hairColor,
    'eyeColor': eyeColor,
    'skinColor': skinColor,
    'cybernetics': cybernetics,
    'affiliations': affiliations,
    'masters': masters,
    'apprentices': apprentices,
    'formerAffiliations': formerAffiliations,
    'dateCreated': dateCreated,
    'dateDestroyed': dateDestroyed,
    'destroyedLocation': destroyedLocation,
    'creator': creator,
    'manufacturer': manufacturer,
    'model': model,
    'class': characterClass,
    'sensorColor': sensorColor,
    'platingColor': platingColor,
    'equipment': equipment,
    'productLine': productLine,
    'kajidic': kajidic,
    'era': era,
    'degree': degree,
    'armament': armament,
  };
}
