import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/model.dart';
import 'package:flutter_application_1/View/widgets/blog.dart';
import 'package:flutter_application_1/View/widgets/tag.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/Group.png'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/Search.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0).copyWith(right: 16),
            child: Image.asset('assets/shopping.png'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/Title.png',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tags.length,
                    itemBuilder: ((context, index) {
                      return Tag(name: tags[index]);
                    })),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: blogs.length ,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return BCard(
                  title: blogs[index]['title'].toString(),
                  image: blogs[index]['image'].toString(),);
              }),
            ),
            //BlogCard(),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Load More +',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                side: MaterialStateProperty.all<BorderSide>(
                  const BorderSide(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        0), // Set the desired border radius here
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/twitter.png',
                ),
                const SizedBox(
                  width: 40,
                ),
                Image.asset('assets/insta.png'),
                const SizedBox(
                  width: 40,
                ),
                Image.asset('assets/insta.png'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/line.png',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'savaleabhijeet@gmail.com',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const Text(
              '+60 825 876',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const Text(
              '08:00 - 22:00 - Everyday',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/line.png',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'About',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Contact',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Blog',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ],
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Copyright© OpenUI All Rights Reserved.')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
