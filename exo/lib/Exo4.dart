import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exo 4',
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

      backgroundColor: const Color.fromARGB(255, 243, 245, 249),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text('Salut Alex !', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 8),
            Text('Prêt pour une nouvelle journée ?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[600])),
            const SizedBox(height: 40),

            Container(
            width: double.infinity,
            height: 240,
            
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle_outline_sharp, size: 60, color: Colors.deepPurple),
                    const SizedBox(height: 10),
                    Text('Tâches du jour', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
                    SizedBox(height: 10),
                    Text('Vous avez 4 tâches à compléter', style: TextStyle(fontSize: 20, color: Colors.grey[400])),
                  ],
                 ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: SizedBox(

                      height: 100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('12', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
                            SizedBox(height: 4),
                            Text('Terminées', style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 16),

                Expanded(
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('4', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.red)),
                            SizedBox(height: 4),
                            Text('En cours', style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                minimumSize: const Size(250, 70),     
                padding: const EdgeInsets.symmetric(vertical: 16),         
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text('Commencer', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
            ),
        ],
      ),
    )
    )
    );
  }
}