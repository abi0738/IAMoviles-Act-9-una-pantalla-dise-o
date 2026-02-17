import 'package:flutter/material.dart';


void main() {
  runApp(const AppPerfil());
}

class AppPerfil extends StatelessWidget {
  const AppPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Perfil(),
    );
  }
}

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  Widget caja(String texto, Color color, IconData icono) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 3),
          )
        ],
      ),
      child: Row(
        children: [
          Icon(icono, color: Colors.white, size: 26),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              texto,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE4EC), // fondo rosita pastel

      appBar: AppBar(
        title: const Text(
          "perfil",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFFFB6D9),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 20),

            const CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xFFFF9ECF),
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            caja(
              "Nombre: Ashley Vega",
              const Color(0xFFFF9ECF),
              Icons.person,
            ),

            caja(
              "Cursos inscritos:\n• Cumbia\n• Bachata\n• Salsa",
              const Color(0xFFFFB6D9),
              Icons.menu_book,
            ),

            caja(
              "Progreso: En curso",
              const Color(0xFFFF8FC1),
              Icons.bar_chart,
            ),

            caja(
              "Cerrar sesión",
              const Color(0xFFFFA6D4),
              Icons.logout,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

