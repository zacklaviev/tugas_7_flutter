import 'package:flutter/material.dart';
import 'Page/wisata.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: const Icon(Icons.home),
        title: const Center(
          child: Text("Tugas Flutter 7"),
        ),
        actions: const [Icon(Icons.search)],
      ),
      body: const Wisata(),
    );
  }
}
