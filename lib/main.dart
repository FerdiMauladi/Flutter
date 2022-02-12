import 'package:flutter/material.dart';
import 'package:training_flutter/screen/halaman_feeds.dart';
import 'package:training_flutter/screen/halaman_kontak.dart';
import 'package:training_flutter/screen/halaman_utama.dart';
import 'screen/halaman_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HalamanUtama(),
    );
  }
}
