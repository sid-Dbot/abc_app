import 'package:abc_app/homePage.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: YoutubePlayer(
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.green.shade600,
                progressColors: ProgressBarColors(
                    handleColor: Colors.green.shade600,
                    playedColor: Colors.green.shade600),
                controller: YoutubePlayerController(
                    initialVideoId:
                        'https://www.youtube.com/watch?v=n1Y4HROvFME')),
            height: 280,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
