# 🪐 Star Wars App - Práctica Obligatoria (Flutter)

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![2º DAM](https://img.shields.io/badge/2º_DAM-Programación_Móvil-orange?style=for-the-badge)](https://www.todofp.es)

Aplicación móvil desarrollada en **Flutter** para el módulo de **Programación Móvil** (2º DAM - Unidad Didáctica 02). 

La app consume la API pública de Star Wars ([`https://akabab.github.io/starwars-api/api/`](https://akabab.github.io/starwars-api/api/)), permitiendo listar personajes del universo Star Wars y ver la ficha técnica detallada de cada uno de ellos con traducción de términos y estética temática.

---

## 📋 Índice
1. [Guía Paso a Paso: Descargar desde GitHub y arrancar el proyecto](#-guía-paso-a-paso-descargar-desde-github-y-arrancar-el-proyecto)
2. [Documentación Técnica: Widgets Utilizados y Layout](#-documentación-técnica-widgets-utilizados-y-layout)
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
   👉 Pulsa el botón azul **`Get Packages`**.

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

## 📑 Documentación Técnica: Widgets Utilizados y Layout

A continuación se detalla la documentación técnica solicitada para la entrega de la práctica, explicando los widgets empleados y cómo está estructurado el diseño (*layout*) de la aplicación.

### 1. Widgets utilizados en el proyecto

Los widgets se han organizado atendiendo a su responsabilidad en la interfaz:

#### A) Widgets Estructurales y de Posicionamiento (Layout)
- **`MaterialApp`**: Widget raíz de la aplicación. Configura el título general (`'Uso de widget'`), deshabilita el banner de depuración (`debugShowCheckedModeBanner: false`) y establece la vista inicial (`home: HomeScreen()`).
- **`Scaffold`**: Proporciona el esqueleto visual estándar de Material Design. Contiene:
  - La propiedad `appBar` con la barra superior temática.
  - La propiedad `body` con el contenedor central que gestiona el contenido.
- **`AppBar`**: Barra superior de navegación configurada con color de fondo negro (`Color.fromARGB(255, 0, 0, 0)`), elevación de 10 (`elevation: 10`), título centrado (`centerTitle: true`) y texto con la tipografía temática `StarJedi` en color amarillo ámbar.
- **`Center`**: Centra sus widgets hijos tanto horizontal como verticalmente. Se utiliza en el cuerpo de `HomeScreen` (para centrar estados de carga y error) y en `CharacterDetail` (para mantener la tarjeta del personaje perfectamente centrada).
- **`Padding`**: Establece márgenes internos de separación (`EdgeInsets.all(16)`), evitando que los textos y componentes toquen los bordes de la pantalla.
- **`Column`**: Organiza sus widgets hijos en un eje vertical. En `CharacterDetail`, utiliza `mainAxisSize: MainAxisSize.min` para ajustarse estrictamente a la altura de su contenido (imagen, nombre, datos y botón).
- **`Row`**: Organiza widgets en un eje horizontal. Se utiliza en el detalle para alinear el género y la especie con centrado (`MainAxisAlignment.center`).
- **`SizedBox`**: Elemento separador con dimensiones fijas (`height: 16` y `width: 10`) para generar espacios limpios entre widgets sin sobrecargar el árbol visual.

#### B) Widgets de Asincronía y Gestión de Estado
- **`FutureBuilder<List<Character>>`**: Gestiona de forma reactiva el ciclo de vida de la petición HTTP a la API (`CharacterService.getAllCharacters()`):
  - Mientras espera la respuesta (`ConnectionState.waiting`), renderiza un indicador de carga.
  - Si ocurre un fallo (`snapshot.hasError`), muestra el mensaje de error correspondiente.
  - Si la lista llega vacía, muestra un aviso informativo.
  - Al completar con éxito, construye la lista de personajes.
- **`CircularProgressIndicator`**: Rueda animada que ofrece retroalimentación visual al usuario mientras se descargan los datos.
- **`StatefulWidget` (`CharacterList` / `_CharacterListState`)**: Gestiona el estado local de la vista mediante la variable `int personajeAPintar`.
  - Cuando vale `-1`, muestra el listado completo de personajes.
  - Cuando almacena el índice de un personaje seleccionado, reconstruye la vista para mostrar su detalle.
- **`StatelessWidget`**: Utilizado en widgets puramente visuales e inmutables que no requieren estado propio (`HomeScreen`, `CharacterTile` y `CharacterDetail`).

#### C) Widgets de Visualización de Contenido e Interacción
- **`ListView.builder`**: Construye dinámicamente y bajo demanda (*lazy loading*) las filas de personajes con scroll fluido, optimizando el uso de memoria para colecciones extensas.
- **`ListTile`**: Elemento estándar para listas que estructura cada fila con:
  - `leading`: Imagen/miniatura del personaje.
  - `title`: Nombre del personaje.
  - `subtitle`: Género traducido al español.
  - `trailing`: Icono de flecha (`Icons.arrow_forward_ios`).
  - `onTap`: Callback que actualiza el estado para abrir la vista detallada.
- **`Image.network`**: Carga de imágenes remotas desde URLs de la API:
  - Configura `BoxFit.cover` para adaptar la imagen proporcionalmente.
  - Implementa `errorBuilder` para mostrar un icono de reemplazo (`Icon(Icons.person)`) en caso de fallo de red o enlace roto.
- **`Text` y `TextStyle`**: Renderizado de cadenas de texto personalizando familia tipográfica (`StarJedi`), tamaño (`fontSize`), espaciado (`letterSpacing`), peso (`fontWeight.bold`) y color.
- **`Icon`**: Muestra iconos vectoriales del catálogo de Material (`Icons.person`, `Icons.arrow_forward_ios`).
- **`ElevatedButton`**: Botón con relieve que ejecuta el callback `onBack` para devolver al usuario al listado general.

---

### 2. Estructuración del Layout de la Vista

El diseño de la aplicación sigue una arquitectura jerárquica clara con alternancia dinámica de vistas:

```text
MaterialApp
 └── HomeScreen (StatelessWidget)
      └── Scaffold
           ├── AppBar (Barra Star Wars fija con fuente StarJedi)
           └── body: Center
                └── FutureBuilder<List<Character>>
                     ├── [Cargando] ➔ CircularProgressIndicator
                     ├── [Error]    ➔ Padding ➔ Text(Error)
                     └── [Éxito]    ➔ CharacterList (StatefulWidget)
                                         ├── Si personajeAPintar == -1:
                                         │    └── ListView.builder
                                         │         └── CharacterTile (ListTile)
                                         └── Si personajeAPintar != -1:
                                              └── CharacterDetail
                                                   └── Center ➔ Padding ➔ Column
                                                        ├── Image.network (Foto grande)
                                                        ├── Text (Nombre)
                                                        ├── Row (Género + Especie traducidos)
                                                        └── ElevatedButton (Volver)
```

#### Flujo de interacción del Layout:
1. **Inicio y Carga**: `HomeScreen` renderiza la barra superior fija y, mientras `CharacterService.getAllCharacters()` obtiene los datos, el `FutureBuilder` mantiene centrado un `CircularProgressIndicator`.
2. **Visualización de la Lista**: Al resolverse la petición, se monta `CharacterList`. Como `personajeAPintar` se inicializa en `-1`, el layout genera un `ListView.builder` donde cada celda es un `CharacterTile` con formato `[Miniatura] | [Nombre / Género] | [>]`.
3. **Paso al Detalle**: Al hacer clic en un personaje, su evento `onTap` asigna el índice seleccionado a `personajeAPintar` y ejecuta `setState()`. Esto reconstruye el widget mostrando el componente `CharacterDetail`.
4. **Retorno**: Al pulsar el botón `Volver` dentro de `CharacterDetail`, el callback `onBack` reasigna `personajeAPintar = -1` y llama a `setState()`, devolviendo la vista al listado principal de forma fluida.

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
- **Unidad**: UD02 - Flutter y consumo de APIs.
