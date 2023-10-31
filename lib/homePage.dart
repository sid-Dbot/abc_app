import 'dart:math';

import 'package:abc_app/post.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          title: Text('Video'),
          actions: [
            Image.asset(
              'assets/Search.png',
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
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 5,
                          spreadRadius: 2,
                          color: Colors.black26)
                    ],
                    color: Colors.white,
                    border: Border.all(color: Colors.white)),
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Trending',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  itemCount: 15,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4, top: 8),
                  child: Container(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: .78, crossAxisCount: 2),
                      itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Post(),
                                ));
                          },
                          child: GridItem()),
                      itemCount: 11,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              'NABIN KRISHI PRABIDHI || Nepal Television 2079-04-23',
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 95,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/youtube.png',
                          color: Colors.white,
                          scale: 4,
                        ),
                        CustomText(
                          label: 'Youtube',
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  CustomText(
                      label: '1 hour ago',
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 9)
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Container(
                        child: Image.asset(
                      'assets/thumb.png',
                      fit: BoxFit.fill,
                    )),
                    Center(
                      child: Image.asset(
                        'assets/play.png',
                        scale: 3,
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
        height: 225,
        width: 175,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green.shade600),
            borderRadius: BorderRadius.circular(11)),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  String label;
  Color color;
  FontWeight fontWeight;
  double fontSize;

  CustomText(
      {required this.label,
      required this.color,
      required this.fontWeight,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
      textAlign: TextAlign.center,
    );
  }
}
