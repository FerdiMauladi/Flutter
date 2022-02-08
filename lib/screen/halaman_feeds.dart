import 'package:flutter/material.dart';

class HalamanFeeds extends StatefulWidget {
  HalamanFeeds({Key? key}) : super(key: key);

  @override
  State<HalamanFeeds> createState() => _HalamanFeedsState();
}

class _HalamanFeedsState extends State<HalamanFeeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
      child: Column(
        children: const [
          ListTile(
            title: Text("Ferdi Ahmad Mauladi"),
            subtitle: Text("Kota Bandung, Jawa Barat"),
            leading: CircleAvatar(
              child: Text("FA"),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(
            indent: 1,
          ),
          Container(
            width: 300,
            height: 150,
            child: Image.network(
              "https://images.unsplash.com/photo-1454496522488-7a8e488e8606?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80",
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    ));
  }
}
