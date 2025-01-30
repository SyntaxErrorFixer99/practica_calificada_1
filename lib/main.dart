import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // Importa la página de inicio

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Préstamos',
      theme: ThemeData(
        primarySwatch: Colors.orange, // Color primario naranja
        scaffoldBackgroundColor: Color(0xFFFDF5E6), // Fondo crema
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange, // Color de la AppBar
        ),
      ),
      home: HomePage(), // Página de inicio
    );
  }
}
