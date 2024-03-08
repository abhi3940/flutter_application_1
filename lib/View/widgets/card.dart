// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  String image;
  MainCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(image);
  }
}

class BlogCard extends StatefulWidget {
  const BlogCard({super.key});

  @override
  State<BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildCard(cardTitle: "2021 Style Guide"),
        ],
      ),
    );
  }
}

_buildCard({required String cardTitle}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Container(
          height: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: const DecorationImage(
                image: AssetImage("assets/image.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 8.0,
                right: 8.0,
                child: IconButton(
                  icon: const Icon(Icons.bookmark_border),
                  onPressed: () {
                    debugPrint("bookmark buton pressed!!!!");
                  },
                  color: Colors.grey,
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 8.0,
                child: Text(
                  cardTitle,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildView(title: "#fashion"),
              _buildView(title: "#tips"),
            ],
          ),
        ),
      ],
    ),
  );
}

_buildView({required String title}) {
  return Container(
    width: 80,
    height: 20,
    margin: const EdgeInsets.all(2),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade400),
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Text(
      title,
      style: const TextStyle(color: Colors.black),
    ),
  );
}
