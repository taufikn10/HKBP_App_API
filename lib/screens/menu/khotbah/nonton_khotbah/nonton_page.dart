import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/khotbah/video.dart';
import 'package:hkbp_app/screens/menu/khotbah/nonton_khotbah/components/topbar_video.dart';
// import 'package:hkbp_app/models/video_tile.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'components/body_nonton.dart';

class NontonPage extends StatefulWidget {
  const NontonPage({
    Key? key,
    required this.videoItem,
  }) : super(key: key);

  final VideoItem videoItem;

  @override
  State<NontonPage> createState() => _NontonPageState();
}

class _NontonPageState extends State<NontonPage> {
  late YoutubePlayerController _playerController;

  @override
  void initState() {
    super.initState();
    _playerController = YoutubePlayerController(
      initialVideoId:
          '${YoutubePlayer.convertUrlToId(widget.videoItem.video.resourceId.videoId)}',
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
        progressIndicatorColor: const Color(0xffFF0C0C),
      ),
      builder: (context, player) => Scaffold(
        backgroundColor: backgroundColor,
        appBar: TopBarVideo(
          txtTitle: "Nonton Khotbah",
          color: Colors.transparent,
          video: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: player,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BodyNonton(
                      videoItem: widget.videoItem,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
