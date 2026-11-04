import 'package:flutter/material.dart';
import 'package:practica_obligatoria/models/character_model.dart';
import 'package:practica_obligatoria/presentation/widgets/character_detail_widget.dart';
import 'package:practica_obligatoria/presentation/widgets/character_tile_widget.dart';
import 'package:practica_obligatoria/services/character_service.dart';

// Pantalla principal con estado (StatefulWidget) para gestionar los 3 estados y el personaje seleccionado
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Variables para los 3 estados de la pantalla: cargando, con datos y error
  List<Character> lista = [];
  bool cargando = true;
  String? error;

  // Índice del personaje seleccionado (-1 indica que se muestra la lista completa)
  int personajeAPintar = -1;

  // initState se ejecuta una sola vez al crear la pantalla y lanza la petición HTTP
  @override
  void initState() {
    super.initState();
    cargarDatos();
  }

  // Método asíncrono que pide los datos al servicio y controla posibles fallos con try/catch
  Future<void> cargarDatos() async {
    setState(() {
      cargando = true;
      error = null;
    });
    try {
      final resultado = await CharacterService.getAllCharacters();
      setState(() {
        lista = resultado;
        cargando = false;
      });
    } catch (e) {
      setState(() {
        error = 'No se han podido cargar los datos';
        cargando = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // [AppBar]: Barra superior temática personalizada de Star Wars
      appBar: AppBar(
        title: Text(
          'STAR WARS',
          style: TextStyle(
            fontFamily: 'StarJedi',
            letterSpacing: 2,
            color: Colors.amberAccent,
          ),
        ),
        elevation: 10,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      // [SafeArea]: Asegura que el contenido respete las zonas seguras del dispositivo
      body: SafeArea(
        child: Center(
          child: cargando
              // 1. Estado CARGANDO: muestra el indicador de progreso
              ? CircularProgressIndicator()
              : (error != null)
                  // 2. Estado ERROR: muestra mensaje claro y botón para reintentar
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.error_outline, size: 60, color: Colors.red),
                        SizedBox(height: 16),
                        Text(error!),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            cargarDatos();
                          },
                          child: Text('Reintentar'),
                        ),
                      ],
                    )
                  // 3. Estado CON DATOS: muestra la lista de personajes o el detalle del seleccionado
                  : (personajeAPintar == -1)
                      ? ListView.builder(
                          itemCount: lista.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                personajeAPintar = index;
                                setState(() {});
                              },
                              child: CharacterTile(character: lista[index]),
                            );
                          },
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CharacterDetail(character: lista[personajeAPintar]),
                            // [ElevatedButton]: Botón para volver a la lista principal
                            ElevatedButton(
                              onPressed: () {
                                personajeAPintar = -1;
                                setState(() {});
                              },
                              child: Text('Volver'),
                            ),
                          ],
                        ),
        ),
      ),
    );
  }
}
