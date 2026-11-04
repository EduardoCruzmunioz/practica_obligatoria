// Modelo de datos para representar a un personaje de Star Wars.
// Solo incluimos los atributos de la API que realmente mostramos en nuestra pantalla.
class Character {
  final int id;
  final String name;
  final double? height;
  final double? mass;
  final String? gender;
  final String? homeworld;
  final String image;
  final String? species;

  Character({
    required this.id,
    required this.name,
    this.height,
    this.mass,
    this.gender,
    this.homeworld,
    this.image = '',
    this.species,
  });

  // Convierte un campo del JSON en texto (por si algún planeta viene como lista de Strings).
  static String? _aTexto(dynamic valor) {
    if (valor == null) return null;
    if (valor is List) return valor.isEmpty ? null : valor.join(', ');
    return valor.toString();
  }

  // Factory constructor que convierte el mapa JSON de la API en un objeto Character.
  factory Character.fromJson(Map<String, dynamic> json) => Character(
    id: json['id'] as int,
    name: _aTexto(json['name']) ?? 'Desconocido',
    height: (json['height'] as num?)?.toDouble(),
    mass: (json['mass'] as num?)?.toDouble(),
    gender: _aTexto(json['gender']),
    homeworld: _aTexto(json['homeworld']),
    image: _aTexto(json['image']) ?? '',
    species: _aTexto(json['species']),
  );
}
