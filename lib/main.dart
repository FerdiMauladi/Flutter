import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool loginScreen = true;
  bool obscurepasswordLogin = true;
  bool _obscurepasswordLogin = true;
  bool obscurepasswordRegister = true;
  bool _obscurepasswordRegister = true;
  bool obscureconfirmpasswordRegister = true;
  bool _obscureconfirmpasswordRegister = true;

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  clearText(TextEditingController _controller1, _controller2) {
    _controller1.clear();
    _controller2.clear();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff141e30), Color(0xff243b55)],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Aplikasi",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..shader = const LinearGradient(
                            colors: [
                              Color(0xff141e30),
                              Color(0xff243b55),
                              //add more color here.
                            ],
                          ).createShader(
                            const Rect.fromLTWH(100.0, 100.0, 100.0, 100.0),
                          ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 80.0),
                  height: 50.0,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              loginScreen = true;
                              clearText(controller1, controller2);
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: loginScreen
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color:
                                      loginScreen ? Colors.black : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              loginScreen = false;
                              clearText(controller1, controller2);
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: loginScreen
                                  ? Colors.transparent
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Center(
                              child: Text(
                                "REGISTER",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color:
                                      loginScreen ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                if (loginScreen)
                  SizedBox(
                    height: 300.0,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Material(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Container(
                              height: 250,
                              width: size.width * 0.75,
                              foregroundDecoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: size.width * 0.02,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            width: size.width * 0.65,
                            child: TextField(
                              controller: controller1,
                              decoration: const InputDecoration(
                                hintText: "Email/Username",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: size.width * 0.02,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            width: size.width * 0.65,
                            child: TextField(
                              controller: controller2,
                              obscureText: _obscurepasswordLogin,
                              decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: obscurepasswordLogin
                                    ? GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _obscurepasswordLogin =
                                                !_obscurepasswordLogin;
                                          });
                                        },
                                        child: Icon(
                                          _obscurepasswordLogin
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.black,
                                        ))
                                    : null,
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 220,
                          left: size.width * 0.15,
                          child: SizedBox(
                            width: size.width * 0.45,
                            height: 55,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff000000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (!loginScreen)
                  SizedBox(
                    height: 580.0,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Material(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Container(
                              height: 520,
                              width: size.width * 0.75,
                              foregroundDecoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: size.width * 0.02,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            width: size.width * 0.65,
                            child: TextField(
                              controller: controller1,
                              keyboardType: TextInputType.name,
                              decoration: const InputDecoration(
                                hintText: "Masukan Nama",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: size.width * 0.02,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            width: size.width * 0.65,
                            child: TextField(
                              controller: controller2,
                              keyboardType: TextInputType.name,
                              decoration: const InputDecoration(
                                hintText: "Masukan Username",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 210,
                          left: size.width * 0.02,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            width: size.width * 0.65,
                            child: const TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Masukan Email",
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 300,
                          left: size.width * 0.02,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            width: size.width * 0.65,
                            child: TextField(
                              obscureText: _obscurepasswordRegister,
                              decoration: InputDecoration(
                                hintText: "Masukan Password",
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: obscurepasswordRegister
                                    ? GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _obscurepasswordRegister =
                                                !_obscurepasswordRegister;
                                          });
                                        },
                                        child: Icon(
                                          _obscurepasswordRegister
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.black,
                                        ))
                                    : null,
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 390,
                          left: size.width * 0.02,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            width: size.width * 0.65,
                            child: TextField(
                              obscureText: _obscureconfirmpasswordRegister,
                              decoration: InputDecoration(
                                hintText: "Masukan Confirm Password",
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: obscureconfirmpasswordRegister
                                    ? GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _obscureconfirmpasswordRegister =
                                                !_obscureconfirmpasswordRegister;
                                          });
                                        },
                                        child: Icon(
                                          _obscureconfirmpasswordRegister
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.black,
                                        ))
                                    : null,
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 490,
                          left: size.width * 0.15,
                          child: SizedBox(
                            width: size.width * 0.45,
                            height: 55,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff000000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "REGISTER",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
