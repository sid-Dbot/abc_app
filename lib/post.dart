import 'package:abc_app/homePage.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            'assets/Heart.png',
            color: Colors.white,
            scale: 4,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/share.png',
            color: Colors.white,
            scale: 4,
          ),
          SizedBox(
            width: 25,
          )
        ],
        title: Text('Post'),
      ),
      body: Container(
        color: Colors.amber,
        child: CustomText(
            label: 'Video',
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal),
        height: 280,
        width: double.infinity,
      ),
    );
  }
}
