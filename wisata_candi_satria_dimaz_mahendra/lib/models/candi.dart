class Candi {
  final String name;
  final String type;
  final String imageAsset;
  final String location;   // WAJIB ADA

  Candi({
    required this.name,
    required this.type,
    required this.imageAsset,
    required this.location, // WAJIB ADA
  });
}

final List<Candi> candiList = [
  Candi(
    name: 'Candi Borobudur',
    type: 'Buddha',
    imageAsset: 'assets/images/borobudur.jpg',
    location: 'Magelang, Jawa Tengah',
  ),
  Candi(
    name: 'Candi Prambanan',
    type: 'Hindu',
    imageAsset: 'assets/images/prambanan.jpg',
    location: 'Sleman, Yogyakarta',
  ),
  Candi(
    name: 'Candi Sewu',
    type: 'Buddha',
    imageAsset: 'assets/images/sewu.jpg',
    location: 'Klaten, Jawa Tengah',
  ),
];
