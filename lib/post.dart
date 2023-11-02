import 'package:abc_app/homePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PostScreen extends StatelessWidget {
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
        title: Text('Post', style: GoogleFonts.dmSans()),
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
                controller:
                    YoutubePlayerController(initialVideoId: 'Pmg2PtMwhgs')),
            height: 280,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SourceLabel(
                        icon: 'assets/arrow.png',
                        label: 'Youtube',
                        color: Colors.red),
                    CustomText(
                        label: '1 hour ago',
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 9)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'NABIN KRISHI PRABIDHI || Nepal Television 2079-04-23',
                  style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    style: GoogleFonts.mukta(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    '2,401 views  Aug 11, 2022  #ntvnews #ntvplus #nepal #nabinkrishi #krishiprabidhi #krishinepal #nepalkrishi #krishi #ntvkrishi  #ntvplus #ntvnews #nepaltelevision #nepal'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    style: GoogleFonts.mukta(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    'Subscribe to our YouTube Channel and get daily program updates of NTV, NTV PLUS, and NTV NEWS.STAY TUNED FOR MORE UPCOMING PROGRAMS FROM NEPAL TELEVISION !!!'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    style: GoogleFonts.mukta(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    'Nepal Television HD को सबै Channel (NTV News, NTV Khohalpur, NTV Plus)को सम्पूर्ण कार्यक्रम Youtube मा समयमै हेर्न र कार्यक्रम बारे जानकारी प्राप्त गर्न हामीलाई Youtube मा subscribe गर्नुहोस:\nनेपाल टेलिभिजनको App Download गर्नुहोस साथै हामीलाई Facebook, Instagram मा Follow गर्न पनी नभुल्नु होला  ।\nMobile App: http://bit.ly/nepaltelevision​ ')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
