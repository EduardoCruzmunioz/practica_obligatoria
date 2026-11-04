// Mapas de traducción para géneros y especies del universo Star Wars
const Map<String, String> _generos = {
  'male': 'Masculino',
  'female': 'Femenino',
};

const Map<String, String> _especies = {
  'human': 'Humano',
  'droid': 'Droide',
  'wookiee': 'Wookiee',
  'rodian': 'Rodiano',
  'hutt': 'Hutt',
  "yoda's species": 'Especie de Yoda',
  'trandoshan': 'Trandoshano',
  'mon calamari': 'Mon Calamari',
  'ewok': 'Ewok',
  'sullustan': 'Sullustano',
  'neimoidian': 'Neimoidiano',
  'gungan': 'Gungan',
  'toydarian': 'Toydariano',
  'dug': 'Dug',
  'dathomirian zabrak': 'Zabrak de Dathomir',
  'iridonian zabrak': 'Zabrak de Iridonia',
  "twi'lek": "Twi'lek",
  'aleena': 'Aleena',
  'vulptereen': 'Vulptereen',
  'xexto': 'Xexto',
  'toong': 'Toong',
  'tholothian': 'Tholothiano',
  'iktotchi': 'Iktotchi',
  'kel dor': 'Kel Dor',
  'chagrian': 'Chagriano',
  'cerean': 'Cereano',
  'nautolan': 'Nautolano',
  'mirialan': 'Mirialano',
  'geonosian': 'Geonosiano',
  'clawdite': 'Clawdita',
  'besalisk': 'Besalisko',
  'kaminoan': 'Kaminoano',
  'togruta': 'Togruta',
  'kaleesh': 'Kaleesh',
  'umbaran': 'Umbarano',
  "pau'an": "Pau'ano",
  'muun': 'Muun',
  'skakoan': 'Skakoano',
};

// Función auxiliar para traducir un valor a partir de un mapa o devolver el valor por defecto
String _traducir(Map<String, String> mapa, String? valor, String porDefecto) {
  if (valor == null || valor.trim().isEmpty) return porDefecto;
  return mapa[valor.trim().toLowerCase()] ?? valor;
}

// Función utilitaria para traducir el género a español
String traducirGenero(String? genero) =>
    _traducir(_generos, genero, 'Género no identificado');

// Función utilitaria para traducir la especie a español
String traducirEspecie(String? especie) =>
    _traducir(_especies, especie, 'Especie sin identificar');
