import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0, left: 10.0, right: 10.0, top: 10.0),
      child: GNav(
        gap: 5,
        activeColor: Colors.white,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: const Duration(milliseconds: 400),        
        tabBackgroundColor: Colors.grey.shade800,
        color: Colors.black,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Terreno',
          ),
          GButton(
            icon: Icons.group,
            text: 'Clientes',
          ),
          GButton(
            icon: Icons.bar_chart,
            text: 'Analisis',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Ajustes',
          ),
        ],
      ),
    );
  }
}