import 'package:flutter/material.dart';

class ListKontak extends StatelessWidget {
  final String? namaKontak;
  final String? nomorTelepon;
  final String? inisial;

  const ListKontak({
    Key? key,
    this.namaKontak,
    this.nomorTelepon,
    this.inisial,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(namaKontak!),
          subtitle: Text(nomorTelepon!),
          leading: CircleAvatar(
            child: Text(inisial!),
          ),
          trailing: const Icon(Icons.phone),
        ),
        const Divider(),
      ],
    );
  }
}
