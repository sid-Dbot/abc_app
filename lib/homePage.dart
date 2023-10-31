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
          Icon(Icons.search_outlined),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.share_outlined),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: TabBarView(children: [
        Tab(
          child: Text('Trending'),
        ),
        Tab(
          child: Text('Trending'),
        ),
        Tab(
          child: Text('Trending'),
        )
      ]),
    );
  }
}
