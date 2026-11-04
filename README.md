# 🪐 Star Wars App - Práctica Obligatoria (Flutter)

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![2º DAM](https://img.shields.io/badge/2º_DAM-Programación_Móvil-orange?style=for-the-badge)](https://www.todofp.es)

Aplicación móvil desarrollada en **Flutter** para el módulo de **Programación Móvil** (2º DAM - Unidad Didáctica 02).

La app consume la API pública de Star Wars ([`https://akabab.github.io/starwars-api/api/`](https://akabab.github.io/starwars-api/api/)), permitiendo listar personajes del universo Star Wars y ver la ficha técnica detallada de cada uno de ellos con traducción de términos y estética temática.

---

## 📋 Índice

1. [Guía Paso a Paso: Descargar desde GitHub y arrancar el proyecto](#-guía-paso-a-paso-descargar-desde-github-y-arrancar-el-proyecto)
2. [Documentación para la Entrega: Catálogo de Widgets y Layout](#-documentación-para-la-entrega-catálogo-de-widgets-y-layout)
3. [Características Principales](#-características-principales)
4. [Estructura del Proyecto (`lib/`)](#-estructura-del-proyecto-lib)
5. [Tecnologías y Dependencias](#-tecnologías-y-dependencias)
6. [Solución de Problemas Frecuentes](#-solución-de-problemas-frecuentes)

---

## 📥 Guía Paso a Paso: Descargar desde GitHub y arrancar el proyecto

Esta guía está diseñada paso a paso utilizando la interfaz gráfica (sin necesidad de comandos de Git por consola).

---

### Paso 1: Descargar el proyecto desde la web de GitHub

1. Entra en el enlace de este repositorio en tu navegador web.
2. En la página principal, busca y haz clic en el botón verde que dice **`<> Code`** (situado en la parte superior derecha, encima de la lista de archivos).
3. En el menú desplegable que aparece, haz clic en la opción **`Download ZIP`**.
4. El archivo comprimido (ejemplo: `practica_obligatoria-main.zip`) comenzará a descargarse en tu ordenador.

---

### Paso 2: Descomprimir el archivo en tu equipo

1. Ve a tu carpeta de **Descargas** (o donde se haya guardado el archivo).
2. Haz clic derecho sobre el archivo `.zip` descargado y selecciona **`Extraer todo...`** (o utiliza programas como 7-Zip / WinRAR).
3. Elige la carpeta donde quieras ubicar el proyecto en tu disco duro y pulsa en **`Extraer`**.
4. _(Comprobación)_: Asegúrate de entrar en la carpeta resultante y verificar que dentro se encuentran directamente la carpeta `lib`, el archivo `pubspec.yaml`, etc.

---

### Paso 3: Abrir el proyecto en Visual Studio Code

1. Abre **Visual Studio Code**.
2. En la barra de menús superior, ve a **`Archivo` (File)** ➔ **`Abrir carpeta...` (Open Folder...)**.
3. Navega hasta la carpeta descomprimida del proyecto (`practica_obligatoria`) y pulsa **`Seleccionar carpeta`**.
4. Si te aparece una ventana emergente preguntando _"¿Confías en los autores de los archivos de esta carpeta?"_, pulsa en **"Sí, confío en los autores"**.

---

### Paso 4: Descargar las dependencias desde Visual Studio Code

1. Nada más abrir la carpeta, VS Code detectará que es un proyecto de Flutter y te mostrará una notificación emergente abajo a la derecha diciendo:

   > _"Some packages are missing or out of date. Would you like to get them?"_
   > 👉 Pulsa el botón azul **`Get Packages`**.

2. **Si no te aparece el aviso**:
   - En el explorador de archivos de la izquierda, haz clic sobre el archivo **`pubspec.yaml`** para abrirlo.
   - En la esquina superior derecha del editor verás aparecer un icono con una flecha apuntando hacia abajo (**Download / Get Packages**). Haz clic sobre él.

---

### Paso 5: Seleccionar el emulador o dispositivo

1. Mira la **barra de estado inferior** de VS Code (la barra azul o morada situada al final de la ventana).
2. En la esquina inferior derecha verás el nombre de un dispositivo o un texto como `{}` o `No Device` / `Windows (windows)`.
3. Haz **clic sobre ese texto**: se desplegará un menú en la parte superior de la ventana con los dispositivos disponibles.
4. Selecciona tu **emulador Android** (por ejemplo, `Pixel...`) o el navegador **Chrome** si prefieres probarlo en web.
5. Espera unos segundos a que el emulador se inicie y cargue la pantalla principal de Android.

---

### Paso 6: Arrancar y ejecutar la aplicación

1. Con el emulador ya abierto en pantalla:
   - Ve al menú superior de VS Code: **`Ejecutar` (Run)** ➔ **`Iniciar depuración` (Start Debugging)**.
   - O simplemente presiona la tecla **`F5`** de tu teclado.
2. Comenzará el proceso de compilación automática en la pestaña _"Consola de depuración"_.
3. En unos segundos, la aplicación de Star Wars se abrirá automáticamente en la pantalla de tu emulador mostrando la lista interactiva de personajes.
4. Cualquier cambio que hagas en el código se reflejará al instante gracias al **Hot Reload** (icono del rayo amarillo en la barra flotante de depuración).

---

## 📑 Documentación para la Entrega: Catálogo de Widgets y Layout

> **Requisito de la práctica:**  
> _"Al menos siete distintos, de los del catálogo de la unidad:_  
> _Container, Row, Text, Icon, Padding, Column, Expanded, Image, IconButton, SizedBox, Scaffold, AppBar, TextField, SafeArea, CircleAvatar, ElevatedButton, TextButton, OutlinedButton._  
> _Scaffold y MaterialApp no cuentan: los lleva cualquier app. Cuentan los que has elegido tú para construir tu pantalla."_

---

### 1. Widgets seleccionados del catálogo de la unidad

Se han seleccionado e integrado **12 widgets distintos** del catálogo oficial de la unidad (superando ampliamente el mínimo de 7 requeridos), excluyendo `Scaffold` y `MaterialApp`:

|   #    | Widget del Catálogo           | Archivo donde se usa                                          | Uso concreto en la pantalla                                                                                                               |
| :----: | :---------------------------- | :------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------- |
| **1**  | **`AppBar`**                  | `home_screen.dart`                                            | Barra de navegación superior con fondo negro, elevación y título temático de Star Wars centrado.                                          |
| **2**  | **`SafeArea`**                | `home_screen.dart`                                            | Envuelve el cuerpo del `Scaffold` para proteger el layout frente a barras de estado y _notches_ del dispositivo móvil.                    |
| **3**  | **`CircleAvatar`**            | `character_tile_widget.dart`                                  | Muestra la miniatura redondeada de cada personaje en la lista (`ListTile`) o un icono por defecto si no tiene imagen.                     |
| **4**  | **`IconButton`**              | `character_tile_widget.dart`                                  | Botón interactivo con icono de flecha (`trailing`) que activa la navegación al detalle del personaje.                                     |
| **5**  | **`Container`**               | `character_detail_widget.dart`                                | Delimita la ficha o tarjeta visual del personaje con esquinas redondeadas (`borderRadius: 16`), borde ámbar y fondo suavizado.            |
| **6**  | **`Column`**                  | `character_detail_widget.dart`                                | Organiza verticalmente los elementos de la vista de detalle (foto, nombre, datos y botón) con `mainAxisSize: MainAxisSize.min`.           |
| **7**  | **`Row`**                     | `character_detail_widget.dart`                                | Dispone horizontalmente los textos de género y especie del personaje con centrado.                                                        |
| **8**  | **`Padding`**                 | `character_detail_widget.dart`                                | Proporciona un margen interior de 16 píxeles alrededor de la tarjeta para que no colapse contra los bordes de la pantalla.                |
| **9**  | **`SizedBox`**                | `character_detail_widget.dart`                                | Elemento espaciador fijo para crear distancias visuales limpias (16px vertical entre secciones y 10px horizontal entre género y especie). |
| **10** | **`Text`**                    | En todas las vistas                                           | Muestra textos aplicando estilos (`TextStyle`) con tipografía `StarJedi`, negritas, colores y traducciones al español.                    |
| **11** | **`Image`** (`Image.network`) | `character_detail_widget.dart`                                | Carga la imagen remota a 250px de altura con recorte `BoxFit.cover` y control de fallos mediante `errorBuilder`.                          |
| **12** | **`Icon`**                    | `character_tile_widget.dart` / `character_detail_widget.dart` | Renderiza iconos del catálogo Material (`Icons.person` como avatar/fallback y `Icons.arrow_forward_ios` como flecha).                     |
| **13** | **`ElevatedButton`**          | `character_detail_widget.dart`                                | Botón con relieve que invoca el callback `onBack` para devolver al usuario desde el detalle a la lista principal.                         |

---

### 2. Estructuración del Layout de la Vista

El diseño de la vista se estructura en dos niveles: un contenedor global reactivo y un gestor dinámico de pantallas alternas:

```text
MaterialApp (Configuración global)
 └── HomeScreen (Scaffold)
      ├── AppBar (Título "STAR WARS" con fuente StarJedi y color ámbar)
      └── body: SafeArea
           └── Center
                └── FutureBuilder<List<Character>>
                     ├── [Cargando] ➔ CircularProgressIndicator
                     ├── [Error]    ➔ Padding ➔ Text(Error)
                     └── [Éxito]    ➔ CharacterList (StatefulWidget)
                                         │
                                         ├── Si personajeAPintar == -1: VISTA LISTA
                                         │    └── ListView.builder
                                         │         └── CharacterTile (ListTile)
                                         │              ├── leading: CircleAvatar
                                         │              ├── title: Text(nombre)
                                         │              ├── subtitle: Text(género)
                                         │              └── trailing: IconButton(Icon(flecha))
                                         │
                                         └── Si personajeAPintar != -1: VISTA DETALLE
                                              └── CharacterDetail
                                                   └── Center
                                                        └── Padding
                                                             └── Container (Tarjeta con borde)
                                                                  └── Column (Vertical)
                                                                       ├── Image.network (Foto grande)
                                                                       ├── SizedBox (Separación)
                                                                       ├── Text (Nombre en negrita)
                                                                       ├── SizedBox (Separación)
                                                                       ├── Row (Horizontal: Género + Especie)
                                                                       ├── SizedBox (Separación)
                                                                       └── ElevatedButton ("Volver")
```

#### Funcionamiento del Layout:

1. **Contenedor Principal (`HomeScreen`)**:
   - `Scaffold` define la estructura fija: el `AppBar` superior con diseño temático y un `body` protegido por `SafeArea`.
   - `FutureBuilder` se encarga de esperar los datos de `CharacterService.getAllCharacters()`. Mientras espera, centra un `CircularProgressIndicator`.
2. **Layout de Lista (`CharacterList` con `personajeAPintar == -1`)**:
   - El espacio se aprovecha con un `ListView.builder` que renderiza de forma eficiente y bajo demanda cada `CharacterTile`.
   - Cada fila utiliza `ListTile` estructurando: avatar circular (`CircleAvatar`) a la izquierda, textos (`Text`) en el centro y botón con icono (`IconButton`) a la derecha.
3. **Layout de Detalle (`CharacterList` con `personajeAPintar != -1`)**:
   - Al pulsar un personaje, se actualiza el estado (`personajeAPintar = index; setState()`).
   - El layout cambia automáticamente a una tarjeta centrada (`Center` ➔ `Padding` ➔ `Container`).
   - La disposición vertical se realiza con `Column(mainAxisSize: MainAxisSize.min)` para adaptarse al contenido exacto, combinando una imagen de gran tamaño, textos informativos en `Row` y el botón `ElevatedButton` para regresar a la lista (`personajeAPintar = -1`).

---

## 🌟 Características Principales

- **Consumo de API REST**: Descarga asíncrona de los personajes mediante el paquete `http` con control de estados HTTP.
- **Manejo de Estados Asíncronos (`FutureBuilder`)**: Indicador de progreso (`CircularProgressIndicator`), gestión de errores de conexión y control de listas vacías.
- **Estética Temática de Star Wars**: Barra superior (`AppBar`) estilizada con la tipografía oficial `StarJedi` y paleta de colores oscuro y amarillo ámbar.
- **Listado Dinámico (`ListView.builder`)**:
  - Miniatura del personaje con gestor de errores de red (`errorBuilder`).
  - Nombre del personaje.
  - Género traducido al español.
  - Flecha indicadora de navegación.
- **Ficha de Detalle Interactiva**:
  - Imagen en alta resolución.
  - Nombre en formato destacado.
  - Género y especie traducidos al español.
  - Botón de retorno al listado.
- **Traducciones**: Módulo de traducción para normalizar valores en inglés a español (género y especie).
- **Código Modularizado**: Componentes separados de manera independiente dentro de la carpeta `widgets/`.

---

## 📁 Estructura del Proyecto (`lib/`)

El código fuente sigue la convención de nomenclatura `nombre_[nombre_carpeta].dart`:

```text
lib/
├── main.dart                               # Punto de entrada de la aplicación
├── models/
│   └── character_model.dart                # Modelo de datos y mapeo JSON
├── services/
│   └── character_service.dart              # Peticiones HTTP a la API de Star Wars
├── presentation/
│   ├── screens/
│   │   └── home_screen.dart                # Pantalla principal (AppBar + FutureBuilder)
│   └── widgets/
│       ├── character_tile_widget.dart      # Item individual de la lista (ListTile)
│       ├── character_detail_widget.dart    # Vista de detalle de un personaje
│       └── character_list_widget.dart      # Lista de personajes y gestor de selección
└── utils/
    └── traducciones_utils.dart             # Utilidades de traducción de términos
```

---

## 🛠️ Tecnologías y Dependencias

- **Flutter SDK**: `>=3.13.3`
- **Dart SDK**
- **Dependencias**:
  - [`http`](https://pub.dev/packages/http): Cliente HTTP para peticiones REST.
  - [`google_fonts`](https://pub.dev/packages/google_fonts): Tipografías de Google.
- **Recursos locales**:
  - `assets/fonts/Starjedi.ttf`: Fuente Star Wars configurada en `pubspec.yaml`.

---

## 🔧 Solución de Problemas Frecuentes

1. **Si no se descargan las librerías**:
   Abre el archivo `pubspec.yaml` en VS Code, haz un pequeño cambio (como poner un espacio y borrarlo), guarda con `Ctrl + S` y VS Code descargará automáticamente los paquetes.
2. **Si la fuente temática `StarJedi` no se muestra**:
   Detén la ejecución con el botón cuadrado rojo de la barra de depuración y vuelve a pulsar `F5` para que se vuelva a empaquetar la carpeta de assets.
3. **Si el emulador no aparece en el listado**:
   Abre Android Studio ➔ ve a _Virtual Device Manager_ ➔ pulsa el botón de _Play_ en tu emulador para encenderlo antes de pulsar `F5` en VS Code.

---

## 👨‍💻 Información Académica

- **Ciclo formativo**: 2º DAM (Desarrollo de Aplicaciones Multiplataforma).
- **Módulo**: Programación Móvil.
- **Unidad**: UD02 - Flutter.
