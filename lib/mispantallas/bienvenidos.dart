import 'package:flutter/material.dart';

class Bienvenidos extends StatelessWidget {
  const Bienvenidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Fila 1: Título
              const Text("Bienvenidos", 
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.indigo)),
              // Fila 2: Subtítulo
              const Text("Login desarrollado en Flutter", 
                style: TextStyle(fontSize: 18, color: Colors.grey)),
              // Fila 3: Imagen
              Image.network(
                'https://raw.githubusercontent.com/Eliseo128/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/bienvenida.png',
                height: 250,
              ),
              // Fila 4: Botón Login
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                ),
                child: const Text("LOGIN"),
              ),
              // Fila 5: Botón Sign Up Redondeado
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/signup'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  side: const BorderSide(color: Colors.indigo),
                ),
                child: const Text("SIGN UP"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}