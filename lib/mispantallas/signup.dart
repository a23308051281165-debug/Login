import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, iconTheme: const IconThemeData(color: Colors.black)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Sign Up", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const Text("Crear una cuenta es gratis", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),
            _buildInput("Nombre de Usuario"),
            _buildInput("Email"),
            _buildInput("Password", isPass: true),
            _buildInput("Confirmar Password", isPass: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              ),
              child: const Text("Sign Up"),
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("¿Ya tienes una cuenta? "),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/login'),
                    child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(String label, {bool isPass = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: TextField(
        obscureText: isPass,
        decoration: InputDecoration(
          labelText: label,
          border: const UnderlineInputBorder(),
        ),
      ),
    );
  }
}