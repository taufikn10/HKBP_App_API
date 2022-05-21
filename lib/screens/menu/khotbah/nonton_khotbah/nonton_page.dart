import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/video_tile.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'components/body_nonton.dart';

class NontonPage extends StatefulWidget {
  const NontonPage(
    this.video, {
    Key? key,
  }) : super(key: key);

  @override
  State<NontonPage> createState() => _NontonPageState();
  final Video video;
}

class _NontonPageState extends State<NontonPage> {
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
        progressIndicatorColor: const Color(0xffFF0C0C),
      ),
      builder: (context, player) => Scaffold(
        backgroundColor: backgroundColor,
        appBar: const TopBarDetails(
          txtTitle: "Nonton Khotbah",
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: player,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BodyNonton(
                      video: widget.video,
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
