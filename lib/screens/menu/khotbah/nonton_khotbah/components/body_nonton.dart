import 'package:flutter/material.dart';
import 'package:hkbp_app/models/khotbah/video.dart';
import 'package:hkbp_app/models/video_tile.dart';

import 'comments.dart';
import 'info_video.dart';

class BodyNonton extends StatelessWidget {
  const BodyNonton({
    Key? key,
    required this.videoItem,
  }) : super(key: key);

  final VideoItem videoItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoDeskripsi(
          videoItem: videoItem,
        ),
        const Comments(),
      ],
    );
  }
}
