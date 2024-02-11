import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: Center(
      child: Text(
        'Home Page',style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17
      ),
      ),
    ),
    );
  }
}
