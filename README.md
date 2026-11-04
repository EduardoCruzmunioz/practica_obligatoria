# 🪐 Práctica Obligatoria: Star Wars App (Flutter)

Aplicación móvil desarrollada en **Flutter** para el módulo de **Programación Móvil** (2º DAM - Unidad Didáctica 02). 

La aplicación consume la API pública de Star Wars de Akabab ([`https://akabab.github.io/starwars-api/api/`](https://akabab.github.io/starwars-api/api/)) para listar personajes del universo Star Wars y mostrar su vista de detalle de manera interactiva.

---

## 🚀 Características

- **Consumo de API REST**: Peticiones HTTP asíncronas con el paquete `http` para descargar la lista completa de personajes.
- **Gestión Asíncrona con `FutureBuilder`**: Manejo robusto de estados (carga con `CircularProgressIndicator`, gestión de errores y visualización de datos).
- **Interfaz Temática**: Cabecera personalizada (`AppBar`) con fondo oscuro y la tipografía oficial `StarJedi`.
- **Listado Dinámico (`ListView.builder`)**:
  - Miniatura del personaje con control de errores (`errorBuilder`).
  - Nombre del personaje.
  - Género traducido al español.
  - Indicador de navegación.
- **Vista Detallada**:
  - Imagen en alta resolución.
  - Nombre en formato destacado.
  - Género y especie traducidos al español.
  - Botón interactivo para regresar a la lista.
- **Módulo de Traducción**: Diccionario y utilidades para traducir términos de género y especie del inglés al español.
- **Modularización y Componentes Limpios**: Separación de responsabilidades en componentes independientes en la carpeta de widgets.

---

## 📁 Estructura del Proyecto (`lib/`)

El proyecto sigue una convención estricta de nombres basada en la carpeta contenedora (`nombre_[nombre_carpeta].dart`):

```text
lib/
├── main.dart                               # Punto de entrada de la app
├── models/
│   └── character_model.dart                # Modelo de datos y serialización JSON
├── services/
│   └── character_service.dart              # Servicio HTTP para llamadas a la API
├── presentation/
│   ├── screens/
│   │   └── home_screen.dart                # Pantalla principal (AppBar + FutureBuilder)
│   └── widgets/
│       ├── character_tile_widget.dart      # Elemento individual de la lista (ListTile)
│       ├── character_detail_widget.dart    # Vista ampliada del personaje
│       └── character_list_widget.dart      # Gestor de la lista y navegación al detalle
└── utils/
    └── traducciones_utils.dart             # Funciones para traducir género y especie
```

---

## 🛠️ Tecnologías y Dependencias

- **Flutter SDK**: ^3.13.3
- **Dart SDK**
- **Paquetes**:
  - [`http`](https://pub.dev/packages/http): Peticiones de red HTTP a la API.
  - [`google_fonts`](https://pub.dev/packages/google_fonts): Tipografías adicionales.
- **Recursos locales (Assets)**:
  - `assets/fonts/Starjedi.ttf`: Fuente tipográfica con estética de Star Wars.

---

## ⚙️ Instalación y Ejecución

1. **Clonar o abrir el repositorio**:
   Asegúrate de encontrarte en el directorio raíz del proyecto:
   ```bash
   cd practica_obligatoria
   ```

2. **Instalar dependencias**:
   ```bash
   flutter pub get
   ```

3. **Verificar el código**:
   ```bash
   flutter analyze
   ```

4. **Ejecutar en emulador o dispositivo**:
   ```bash
   flutter run
   ```

---

## 👨‍💻 Autor

- Proyecto desarrollado para **2º DAM (Desarrollo de Aplicaciones Multiplataforma)**.
- **Asignatura**: Programación Móvil (Flutter).
