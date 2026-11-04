# 🪐 Star Wars App - Práctica Obligatoria (Flutter)

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![2º DAM](https://img.shields.io/badge/2º_DAM-Programación_Móvil-orange?style=for-the-badge)](https://www.todofp.es)

Aplicación móvil desarrollada en **Flutter** para el módulo de **Programación Móvil** (2º DAM - Unidad Didáctica 02).

La app consume la API pública de Star Wars ([`https://akabab.github.io/starwars-api/api/`](https://akabab.github.io/starwars-api/api/)), permitiendo listar personajes del universo Star Wars y ver la ficha técnica detallada de cada uno de ellos con traducción de términos y estética temática.

---

## 📋 Índice

1. [Guía Paso a Paso: Descargar desde GitHub y arrancar el proyecto](#-guía-paso-a-paso-descargar-desde-github-y-arrancar-el-proyecto)
2. [Características Principales](#-características-principales)
3. [Estructura del Proyecto](#-estructura-del-proyecto-lib)
4. [Tecnologías y Dependencias](#-tecnologías-y-dependencias)
5. [Solución de Problemas Frecuentes](#-solución-de-problemas-frecuentes)

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
