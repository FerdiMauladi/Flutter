import 'package:flutter/material.dart';

class HalamanHome extends StatefulWidget {
  const HalamanHome({Key? key}) : super(key: key);

  @override
  State<HalamanHome> createState() => _HalamanHomeState();
}

class _HalamanHomeState extends State<HalamanHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Utama"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "ini text biasa berwarna indigo",
              style: TextStyle(fontSize: 20.0, color: Color(0xff4b0082)),
            ),
            const Text(
              "ini text miring",
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            const Text(
              "ini text biasa tipis",
              style: TextStyle(
                fontWeight: FontWeight.w100,
              ),
            ),
            const Text(
              "ini text biasa tebal",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.home,
                  size: 50.0,
                ),
                Icon(
                  Icons.phone,
                  size: 50.0,
                ),
                Icon(
                  Icons.search,
                  size: 50.0,
                  color: Colors.red,
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Container(
              width: 300,
              height: 150,
              child: Image.network(
                "https://images.unsplash.com/photo-1454496522488-7a8e488e8606?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: 300,
              height: 150,
              child: Image.asset("assets/images/gunung.jpg"),
            ),
            Container(
              width: 300,
              height: 150,
              child: Image.asset("assets/images/gunung1.jpg"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Ini adalah elevated button",
                style: TextStyle(color: Colors.white),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Ini adalah Outlined Button",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Container(
              width: 200,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
