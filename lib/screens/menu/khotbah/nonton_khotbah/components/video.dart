import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hkbp_app/models/video_tile.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlay extends StatefulWidget {
  final Video1 video;
  const VideoPlay({Key? key, required this.video}) : super(key: key);

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  late YoutubePlayerController _playerController;

  @override
  void initState() {
    super.initState();
    _playerController = YoutubePlayerController(
      initialVideoId: '${YoutubePlayer.convertUrlToId(widget.video.videoUrl)}',
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        enableCaption: false,
        isLive: false,
      ),
    );
  }

  @override
  void deactivate() {
    _playerController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        onExitFullScreen: () {
          SystemChrome.setPreferredOrientations(DeviceOrientation.values);
        },
        player: YoutubePlayer(
          controller: _playerController,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blueAccent,
        ),
        builder: (context, player) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: player,
              ),
            ],
          );
        });
  }
}
