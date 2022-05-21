import 'package:flutter/material.dart';
import 'package:hkbp_app/models/video_tile.dart';

import 'package:intl/date_symbol_data_local.dart';

import 'comments.dart';
import 'info_video.dart';

class BodyNonton extends StatelessWidget {
  final Video video;

  const BodyNonton({
    Key? key,
    required this.video,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id', null);
    return Column(
      children: [
        InfoDeskripsi(video: video),
        const Comments(),
      ],
    );
  }
}
