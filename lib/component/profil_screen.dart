import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  State<ProfilScreen> createState() => _ProfilScreen();
}

class _ProfilScreen extends State<ProfilScreen> {
  bool uploadPost = true;

  var postImage = [
    {"imagesPost": "assets/images/gunung.jpg"},
    {"imagesPost": "assets/images/gunung1.jpg"},
    {"imagesPost": "assets/images/gunung1.jpg"},
    {"imagesPost": "assets/images/gunung.jpg"},
    {"imagesPost": "assets/images/gunung1.jpg"},
    {"imagesPost": "assets/images/gunung.jpg"},
    {"imagesPost": "assets/images/gunung.jpg"},
    {"imagesPost": "assets/images/gunung1.jpg"},
    {"imagesPost": "assets/images/gunung.jpg"},
  ];

  var postTag = [
    {"imagesPost": "assets/images/gunung1.jpg"},
    {"imagesPost": "assets/images/gunung.jpg"},
    {"imagesPost": "assets/images/gunung1.jpg"},
    {"imagesPost": "assets/images/gunung.jpg"},
    {"imagesPost": "assets/images/gunung1.jpg"},
    {"imagesPost": "assets/images/gunung1.jpg"},
    {"imagesPost": "assets/images/gunung.jpg"},
    {"imagesPost": "assets/images/gunung1.jpg"},
    {"imagesPost": "assets/images/gunung.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            "FM",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "25",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Postingan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "1500",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Pengikut",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "816",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Mengikuti",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    child: const Text(
                      "Ferdi Ahmad Mauladi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: const Text(
                      "Blog Pribadi",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: const Text(
                      "Sic Parvis Magna",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 35,
                    width: size.width,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                        width: 1.5,
                        color: Colors.grey,
                      )),
                      onPressed: () {},
                      child: const Text(
                        "Edit Profil",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: size.width * 0.30,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                            )),
                            onPressed: () {},
                            child: const Text(
                              "Fitur Iklan",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: size.width * 0.30,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                            )),
                            onPressed: () {},
                            child: const Text(
                              "Insight",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: size.width * 0.30,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                            )),
                            onPressed: () {},
                            child: const Text(
                              "Kontak",
                              style: TextStyle(
                                color: Colors.white,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              uploadPost = true;
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                child: Center(
                                  child: Icon(
                                    Icons.grid_on,
                                    size: 35.0,
                                    color:
                                        uploadPost ? Colors.white : Colors.grey,
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: uploadPost ? 1 : 0.5,
                                color: uploadPost ? Colors.white : Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              uploadPost = false;
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                child: Center(
                                  child: Icon(
                                    Icons.person_pin,
                                    size: 35.0,
                                    color:
                                        uploadPost ? Colors.grey : Colors.white,
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: uploadPost ? 0.5 : 1,
                                color: uploadPost ? Colors.grey : Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (uploadPost)
              GridView.count(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  children: postImage
                      .map(
                        (images) => Container(
                          margin: const EdgeInsets.all(2.0),
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            '${images['imagesPost']}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList()),
            if (!uploadPost)
              GridView.count(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  children: postTag
                      .map(
                        (images) => Container(
                          margin: const EdgeInsets.all(2.0),
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            '${images['imagesPost']}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList()),
          ],
        ),
      ),
    );
  }
}
