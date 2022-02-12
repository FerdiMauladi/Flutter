import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:training_flutter/component/home_screen.dart';
import 'package:training_flutter/component/profil_screen.dart';
import 'package:training_flutter/component/setting_screen.dart';
import 'package:training_flutter/screen/halaman_feeds.dart';

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

  List Screen = [
    HomeScreen(),
    ProfilScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          judulHalaman.elementAt(indexHalaman),
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
      ),
      body: Screen.elementAt(indexHalaman),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexHalaman,
        onTap: (value) {
          setState(() {
            indexHalaman = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Pengaturan"),
        ],
      ),
    );
  }
}
