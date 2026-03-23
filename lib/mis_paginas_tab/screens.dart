import 'package:flutter/material.dart';

// --- WIDGET REUTILIZABLE PARA IMÁGENES ---
class KinsuiImage extends StatelessWidget {
  final String url;
  const KinsuiImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(url), // Aquí cargarás desde GitHub
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// --- PANTALLA: HOME ---
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kinsui Express - Bienvenida")),
      body: Column(
        children: const [
          KinsuiImage(url: "https://raw.githubusercontent.com/LoyaCesar0630/Imagenes-para-flutter-6TO-I-11-FEB-2026/refs/heads/main/KINSUI-EXPRESS.jpg"), 
          Text("¡Los mejores sabores de Japón!", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}

// --- PANTALLA: BUSQUEDA ---
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buscar Platillo")),
      body: Column(
        children: const [
          KinsuiImage(url: "https://raw.githubusercontent.com/LoyaCesar0630/Imagenes-para-flutter-6TO-I-11-FEB-2026/refs/heads/main/cafe.png"),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(hintText: "¿Qué se te antoja hoy?")),
          ),
        ],
      ),
    );
  }
}

// --- PANTALLA: CARRITO ---
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tu Pedido")),
      body: Column(
        children: const [
          KinsuiImage(url: "https://github.com/LoyaCesar0630/Imagenes-para-flutter-6TO-I-11-FEB-2026/blob/main/cafe2.jpg?raw=true"),
          Center(child: Text("Tu carrito está vacío.")),
        ],
      ),
    );
  }
}

// --- PANTALLA: ROLLOS ---
class RollsScreen extends StatelessWidget {
  const RollsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Especialidad en Rollos")),
      body: Column(
        children: const [
          KinsuiImage(url: "https://raw.githubusercontent.com/LoyaCesar0630/Imagenes-para-flutter-6TO-I-11-FEB-2026/refs/heads/main/roll.jpeg"),
          ListTile(title: Text("California Roll"), subtitle: Text("\$8.50")),
          ListTile(title: Text("Dragon Roll"), subtitle: Text("\$12.00")),
        ],
      ),
    );
  }
}

// --- PANTALLA: CONTACTO ---
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contáctanos")),
      body: Column(
        children: const [
          KinsuiImage(url: "https://raw.githubusercontent.com/LoyaCesar0630/Imagenes-para-flutter-6TO-I-11-FEB-2026/refs/heads/main/pancoroll.jpeg"),
          Text("Ubicación: Av. Principal 123"),
          Text("Teléfono: +123 456 789"),
        ],
      ),
    );
  }
}