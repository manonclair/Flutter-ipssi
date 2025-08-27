import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bonsoir', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.grey[300])),
                          const Text('Marie ✨', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[800],
                      child: const Icon(Icons.notifications_none, color: Colors.white),
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromARGB(47, 240, 97, 145),
                            child: Icon(Icons.music_note, color: Color.fromARGB(255, 240, 97, 145)),
                          ),
                          SizedBox(height: 8),
                          Text('Musique', style: TextStyle(color: Colors.white, fontSize: 22)),
                          Text('23 playlists', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromARGB(87, 0, 92, 83),
                            child: Icon(Icons.camera_alt, color: Colors.tealAccent),
                          ),
                          SizedBox(height: 8),
                          Text('Photos', style: TextStyle(color: Colors.white, fontSize: 22)),
                          Text('156 images', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromARGB(51, 255, 228, 91),
                            child: Icon(Icons.book, color: Color.fromARGB(255, 255, 227, 91)),
                          ),
                          SizedBox(height: 8),
                          Text('Lecture', style: TextStyle(color: Colors.white, fontSize: 22)),
                          Text('5 livres', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromARGB(45, 252, 82, 88),
                            child: Icon(Icons.fitness_center, color: Color.fromARGB(255, 252, 82, 89)),
                          ),
                          SizedBox(height: 8),
                          Text('Sport', style: TextStyle(color: Colors.white, fontSize: 22)),
                          Text('12 exercices', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                const Text('Activité récente',
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600)),
                const SizedBox(height: 12),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(16)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 244, 143, 177),
                          child: Icon(Icons.play_circle_fill, color: Colors.pinkAccent),
                        ),
                        title: const Text('Playlist Chill', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                        subtitle: Text('Écoutée il y a 2h', style: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(16)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: const Color.fromARGB(255, 129, 199, 199),
                          child: Icon(Icons.photo_camera, color: Colors.teal.shade300),
                        ),
                        title: const Text('Photo de vacances', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                        subtitle: Text('Ajoutée hier', style: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(16)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 255, 236, 179),
                          child: Icon(Icons.book, color: Colors.amber),
                        ),
                        title: const Text('Chapitre 5 terminé', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                        subtitle: Text('Il y a 3 jours', style: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 88, 64, 223),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.explore, color: Colors.white, size: 28),
                        SizedBox(width: 12),
                        Text('Explorer', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
                      ],
                  ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
