import 'package:flutter/material.dart';
import 'mis_paginas_tab/tabs_menu.dart';

void main() {
  // Aquí iría la inicialización de Firebase: 
  // await Firebase.initializeApp();
  runApp(const KinsuiExpressApp());
}

class KinsuiExpressApp extends StatelessWidget {
  const KinsuiExpressApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kinsui Express',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red, // Color acorde a sushi/comida japonesa
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Definición de rutas nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const TabsMenu(),
      },
    );
  }
}