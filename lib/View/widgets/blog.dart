// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BCard extends StatefulWidget {
  String title;
  String image;
  BCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  State<BCard> createState() => _BCardState();
}

class _BCardState extends State<BCard> {
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 500,
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
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 8.0,
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
