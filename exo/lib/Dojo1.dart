import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dojo 1',
      debugShowCheckedModeBanner: false, // enlève le bandeau "Debug"
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
  Color _currentColor = Colors.red;

  List myColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple
  ];

  List<String> colorNames = [
    "Red",
    "Blue",
    "Green",
    "Purple",
  ];

  int i = 0; 

  void _changeColor() {
    setState(() {
      i = (i + 1) % myColors.length;  
      _currentColor = myColors[i];     
    });
  }

  @override
  Widget build(BuildContext context) {
    String name  = colorNames[i];
    return SizedBox(
      width: 120,  
      height: 50,  
      child: Center(
      child: ElevatedButton(
        onPressed: _changeColor,
        style: ElevatedButton.styleFrom(
          backgroundColor: _currentColor,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text(
          name,
          style: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    )

    );
  } 
}