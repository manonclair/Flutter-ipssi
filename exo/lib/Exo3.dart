import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exo 3',
      debugShowCheckedModeBanner: false, // enlève le bandeau "Debug"
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
            const SizedBox(height: 40),
            Text('Bonjour', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w300, color: Colors.white)),
            SizedBox(height: 8),
            Text('Votre espace personnel', style: TextStyle(fontSize: 16, color: Colors.grey[400])),
            const SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Projets', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('3 projet en cours', style: TextStyle(fontSize: 20, color: Colors.grey)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
   
           Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[900],
              ),
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Activité', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                    SizedBox(height: 10),
                    Text('Dernière connexion : aujourd\'hui', style: TextStyle(fontSize: 20, color: Colors.grey[400])),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(320, 70),     
                padding: const EdgeInsets.symmetric(vertical: 16),         
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text('Commencer', style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
            ),
        ],
      ),
    )
    )
    );
  }
}