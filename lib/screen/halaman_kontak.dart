import 'package:flutter/material.dart';
import 'package:training_flutter/component/listkontak.dart';
import 'package:training_flutter/model/datakontak.dart';

class HalamanKontak extends StatefulWidget {
  const HalamanKontak({Key? key}) : super(key: key);

  @override
  State<HalamanKontak> createState() => _HalamanKontakState();
}

class _HalamanKontakState extends State<HalamanKontak> {
  var data = [
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
    DataKontak(
        namaKontak: "Orang 1", nomorTelepon: "0812345678", inisial: "OR"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: data
            .map((dataText) => ListKontak(
                namaKontak: dataText.namaKontak,
                nomorTelepon: dataText.nomorTelepon,
                inisial: dataText.inisial))
            .toList(),
      ),
    );
  }
}
