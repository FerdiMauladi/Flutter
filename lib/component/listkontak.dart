import 'package:flutter/material.dart';

class listkontak extends StatelessWidget {
  final String namaKontak;
  final String nomorTelepon;
  final String inisial;

  const listkontak({
    Key? key,
    required this.namaKontak,
    required this.nomorTelepon,
    required this.inisial,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(namaKontak),
          subtitle: Text(nomorTelepon),
          leading: CircleAvatar(
            child: Text(inisial),
          ),
          trailing: Icon(Icons.phone),
        ),
        const Divider(),
      ],
    );
  }
}
