import 'package:flutter/material.dart';

class listfeeds extends StatelessWidget {
  final String? userName;
  final String? daerahPosting;
  final String? imagePost;
  final String? likes;
  final String? caption;
  final String? jamPosting;

  const listfeeds({
    Key? key,
    this.userName,
    this.daerahPosting,
    this.imagePost,
    this.likes,
    this.caption,
    this.jamPosting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      color: Colors.black,
      child: Column(
        children: [
          ListTile(
            title: Text(
              userName!,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              daerahPosting!,
              style: const TextStyle(color: Colors.white),
            ),
            leading: CircleAvatar(
              child: Text(userName!.substring(0, 2)),
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
          const Divider(
            indent: 1,
          ),
          Container(
            width: size.width,
            height: 300,
            child: Image.asset(
              imagePost!,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8.0, left: 5.0),
                padding: const EdgeInsets.all(5.0),
                child: const Icon(
                  Icons.favorite_outline_outlined,
                  size: 35.0,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0, left: 5.0),
                padding: EdgeInsets.all(5.0),
                child: const Icon(
                  Icons.mode_comment_outlined,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0, left: 5.0),
                padding: EdgeInsets.all(5.0),
                child: const Icon(
                  Icons.send_outlined,
                  size: 35.0,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(top: 8.0),
                padding: EdgeInsets.all(5.0),
                child: const Icon(
                  Icons.bookmark_outline_outlined,
                  size: 35.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 5.0, left: 5.0),
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              likes! + " Suka",
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5.0, left: 5.0),
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  userName!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  caption!,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0, left: 5.0),
            padding: const EdgeInsets.only(left: 5.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Lihat Semua Komentar",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 5.0),
            padding: const EdgeInsets.only(left: 5.0),
            alignment: Alignment.centerLeft,
            child: Text(
              jamPosting! + " yang lalu",
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
