import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exo 1',
      debugShowCheckedModeBanner: false, // enlève le bandeau "Debug"
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home), // Icone à gauche
        title: const Text(
          'Exo 1',
        ),
      foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 69, 95, 136),
        actions: const [
          Icon(Icons.settings), // Icone à droite
          SizedBox(width: 16), 
        ],
        ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 54, 127, 244),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}