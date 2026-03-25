import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // Definición de colores pastel para fácil acceso
    final Color pastelPurple = Color(0xFFE1BEE7); // Lavanda suave
    final Color pastelBlue = Color(0xFFBBDEFB);   // Azul cielo pastel
    final Color deepPastel = Color(0xFF9575CD);   // Morado un poco más intenso para el texto

    return Scaffold(
      backgroundColor: Color(0xFFF8F9FE), // Fondo casi blanco/azulado muy suave
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 70.0),
          child: Column(
            children: [
              Text(
                "Login", 
                style: TextStyle(
                  fontSize: 32, 
                  fontWeight: FontWeight.bold, 
                  color: deepPastel
                )
              ),
              const SizedBox(height: 8),
              const Text(
                "Inicia sesión con tu cuenta", 
                style: TextStyle(color: Colors.black45, letterSpacing: 0.5)
              ),
              const SizedBox(height: 40),
              
              // Campo de Email
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.email_outlined, color: deepPastel),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none, // Quitamos el borde negro
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: pastelBlue.withOpacity(0.5)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              
              // Campo de Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.lock_outline, color: deepPastel),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: pastelBlue.withOpacity(0.5)),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              
              // Botón Redondeado Pastel
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 55),
                  shape: StadiumBorder(),
                  backgroundColor: pastelPurple, // Color pastel principal
                  foregroundColor: Colors.white,
                  elevation: 2, // Sombra suave
                  shadowColor: pastelPurple.withOpacity(0.5),
                ),
                child: const Text(
                  "Iniciar Sesión", 
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)
                ),
              ),
              const SizedBox(height: 25),
              
              // Texto Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("¿No tienes cuenta? ", style: TextStyle(color: Colors.black54)),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/signup'),
                    child: Text(
                      "Sign up", 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        color: deepPastel // Usamos el morado intenso para resaltar
                      )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              
              // Imagen de red
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Bordes redondeados a la imagen
                child: Image.network(
                  'https://raw.githubusercontent.com/Eliseo128/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/fondo.png',
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}