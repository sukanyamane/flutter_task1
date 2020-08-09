import 'package:flutter/material.dart';
import 'package:task1/netaudio.dart';
import 'package:task1/video.dart';
import 'package:video_player/video_player.dart';
import './localaudio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Media Player'),
            backgroundColor: Colors.pink,
            bottom: TabBar(
              //   isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.music_note),
                  text: "AudioL",
                ),
                Tab(icon: Icon(Icons.music_note), text: "AudioIn"),
                Tab(icon: Icon(Icons.video_library), text: "VideoL"),
                Tab(icon: Icon(Icons.video_library), text: "VideoIn"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              LocalAudio(),
              MyApp1(),
              ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                  'assets/video/jack.mp4',
                ),
                looping: true,
              ),
              ChewieListItem(
                  videoPlayerController: VideoPlayerController.network(
                'https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4',
              )),
            ],
          ),
        ),
      ),
    );
  }
}
