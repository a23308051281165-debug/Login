import 'package:flutter/material.dart';
import 'mispantallas/bienvenidos.dart';
import 'mispantallas/login.dart';
import 'mispantallas/signup.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      // Definición de rutas nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const Bienvenidos(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}