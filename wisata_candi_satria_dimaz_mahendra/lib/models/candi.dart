class Candi {
  final String name;
  final String location;
  final String imageAsset;

  Candi({
    required this.name,
    required this.location,
    required this.imageAsset,
  });
}

final List<Candi> candiList = [
  Candi(
    name: 'Candi Borobudur',
    location: 'Magelang, Jawa Tengah',
    imageAsset: 'assets/borobudur.jpg',
  ),
  Candi(
    name: 'Candi Prambanan',
    location: 'Sleman, Yogyakarta',
    imageAsset: 'assets/prambanan.jpg',
  ),
  Candi(
    name: 'Candi Sewu',
    location: 'Klaten, Jawa Tengah',
    imageAsset: 'assets/sewu.jpg',
  ),
);

import 'package:flutter/material.dart';
import 'screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pencarian Candi',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const SearchScreen(),
    );
  }
}

class Candi {
  final String name;
  final String type;
  final String imageAsset;

  Candi({
    required this.name,
    required this.type,
    required this.imageAsset,
  });
}

final List<Candi> candiList = [
  Candi(
  name: 'Candi Borobudur',
  type: 'Buddha',
  imageAsset: 'assets/borobudur.jpg',
),
Candi(
  name: 'Candi Prambanan',
  type: 'Hindu',
  imageAsset: 'assets/prambanan.jpg',
),
  Candi(
    name: 'Candi Sewu',
    type: 'Buddha',
    imageAsset: 'assets/sewu.jpg',
  ),
);

