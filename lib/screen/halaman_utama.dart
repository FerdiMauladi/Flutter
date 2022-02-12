import 'package:flutter/material.dart';

class HalamanUtama extends StatefulWidget {
  HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int indexHalaman = 0;
  List judulHalaman = [
    "Halaman Beranda",
    "Halaman Profil",
    "Halaman Pengaturan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text("Halaman Utama"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Halaman Beranda"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Halaman Profil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Halaman Pengaturan"),
        ],
      ),
    );
  }
}
