import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dojo 2',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();

  Color _currentColor = Colors.red;

  final Map<String, (Color color, String name)> _palette = {
    'red': (Colors.red, 'Red'),
    'rouge': (Colors.red, 'Red'),
    'blue': (Colors.blue, 'Blue'),
    'bleu': (Colors.blue, 'Blue'),
    'green': (Colors.green, 'Green'),
    'vert': (Colors.green, 'Green'),
    'purple': (Colors.purple, 'Purple'),
    'violet': (Colors.purple, 'Purple'),
    'pink': (Colors.pink, 'Pink'),
    'rose': (Colors.pink, 'Pink'),
    'yellow': (Colors.yellow, 'Yellow'),
    'jaune': (Colors.yellow, 'Yellow'),
    'orange': (Colors.orange, 'Orange'),
    'black': (Colors.black, 'Black'),
    'noir': (Colors.black, 'Black'),
    'white': (Colors.white, 'White'),
    'blanc': (Colors.white, 'White'),
    'grey': (Colors.grey, 'Grey'),
    'gris': (Colors.grey, 'Grey'),
    'magenta': (Colors.pinkAccent, 'Magenta'),
  };

  void _applyInput(String input) {
    final key = input.trim().toLowerCase();

    if (_palette.containsKey(key)) {
      final (color, name) = _palette[key]!;
      setState(() {
        _currentColor = color;

      });
      return;
    }

    setState(() {
      _currentColor = Colors.red;
    });
  }

  @override
  void dispose() {
    _controller.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          
          child: Column(
            children: [
              const SizedBox(height: 24),
             
              if (_controller.text.isNotEmpty)
                Center(
                child: Text(
                  'La couleur est ${_controller.text}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              TextField(
                controller: _controller,
                onChanged: _applyInput, 
                decoration: InputDecoration(
                  hintText: 'Entrez une couleur',
                  border: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
    
                  ),
                ),
              ),

              const SizedBox(height: 24),
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: _currentColor,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
