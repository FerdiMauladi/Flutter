import 'package:flutter/material.dart';
import 'package:training_flutter/component/listfeeds.dart';
import 'package:training_flutter/model/dataFeeds.dart';

class HalamanFeeds extends StatefulWidget {
  HalamanFeeds({Key? key}) : super(key: key);

  @override
  State<HalamanFeeds> createState() => _HalamanFeedsState();
}

class _HalamanFeedsState extends State<HalamanFeeds> {
  var data = [
    DataFeeds(
        userName: "ferdimauladi",
        daerahPosting: "Kota Bandung, Jawa Barat",
        imagePost: "assets/images/gunung.jpg",
        likes: "1000",
        caption: "Gunung Bandung",
        jamPosting: "2 jam"),
    DataFeeds(
        userName: "ferdi",
        daerahPosting: "Kota Bogor, Jawa Barat",
        imagePost: "assets/images/gunung1.jpg",
        likes: "100",
        caption: "Gunung Bogor",
        jamPosting: "1 jam"),
    DataFeeds(
        userName: "ahmad",
        daerahPosting: "Kota Bekasi, Jawa Barat",
        imagePost: "assets/images/gunung.jpg",
        likes: "90",
        caption: "Gunung Bekasi",
        jamPosting: "4 jam"),
    DataFeeds(
        userName: "mauladi",
        daerahPosting: "Kota Cimahi, Jawa Barat",
        imagePost: "assets/images/gunung1.jpg",
        likes: "85",
        caption: "Gunung Cimahi",
        jamPosting: "1 hari"),
    DataFeeds(
        userName: "ferdiahmad",
        daerahPosting: "Kota Majalengka, Jawa Barat",
        imagePost: "assets/images/gunung.jpg",
        likes: "200",
        caption: "Gunung Majalengka",
        jamPosting: "3 jam"),
    DataFeeds(
        userName: "ferdiahmadmauladi",
        daerahPosting: "Kota Ciamis, Jawa Barat",
        imagePost: "assets/images/gunung1.jpg",
        likes: "500",
        caption: "Gunung Ciamis",
        jamPosting: "2 hari"),
    DataFeeds(
        userName: "mauladiferdi",
        daerahPosting: "Kota Cikarang, Jawa Barat",
        imagePost: "assets/images/gunung.jpg",
        likes: "700",
        caption: "Gunung Cikarang",
        jamPosting: "12 jam"),
    DataFeeds(
        userName: "ahmadferdi",
        daerahPosting: "Kota Sukabumi, Jawa Barat",
        imagePost: "assets/images/gunung1.jpg",
        likes: "250",
        caption: "Gunung Sukabumi",
        jamPosting: "8 jam"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: data
            .map(
              (dataFeeds) => listfeeds(
                userName: dataFeeds.userName,
                daerahPosting: dataFeeds.daerahPosting,
                imagePost: dataFeeds.imagePost,
                likes: dataFeeds.likes,
                caption: dataFeeds.caption,
                jamPosting: dataFeeds.jamPosting,
              ),
            )
            .toList(),
      ),
    );
  }
}
