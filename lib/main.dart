import 'package:flutter/material.dart';
import 'package:practica_obligatoria/presentation/screens/home_screen.dart';

// Punto de entrada principal de la aplicación Flutter
void main() {
  runApp(MainApp());
}

// Widget raíz de la aplicación
class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uso de widget',
      debugShowCheckedModeBanner: false,
      // Definimos HomeScreen como la pantalla inicial
      home: HomeScreen(),
    );
  }
}
