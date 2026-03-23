import 'package:flutter/material.dart';
import 'screens.dart';

class TabsMenu extends StatefulWidget {
  const TabsMenu({super.key});

  @override
  State<TabsMenu> createState() => _TabsMenuState();
}

class _TabsMenuState extends State<TabsMenu> {
  int _currentIndex = 0;

  // Lista de las 5 pantallas de Kinsui Express
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
    const RollsScreen(),
    const ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed, // Mantiene los 5 iconos visibles
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Carrito'),
          BottomNavigationBarItem(icon: Icon(Icons.set_meal), label: 'Rollos'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_support), label: 'Contacto'),
        ],
      ),
    );
  }
}