import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/video_tile.dart';
import 'package:hkbp_app/screens/menu/khotbah/nonton_khotbah/nonton_page.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class BodyKhotbah extends StatelessWidget {
  final Video video;

  const BodyKhotbah({Key? key, required this.video}) : super(key: key);

  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initializeDateFormatting('id_ID', null);
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id', null);
    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => NontonPage(video))),
          child: Stack(
            children: [
              Image.network(
                video.thumbnailUrl,
                height: 197,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  color: Colors.black.withOpacity(0.8),
                  child: Text(
                    video.duration,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  Icons.bookmark_border_rounded,
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 6),
                child: Text(
                  video.title,
                  style: txtR12d,
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  children: [
                    Text(
                      "Diterbitkan",
                      style: txtB10d,
                    ),
                    Text(
                      ' ${DateFormat("d MMMM yyyy", "id_ID").format(video.timestamp)} • ',
                      style: txtR10d,
                    ),
                    Icon(
                      Icons.visibility_outlined,
                      size: 12,
                      color: darkColor,
                    ),
                    Text(
                      ' ${video.viewCount} • ',
                      style: txtR10d,
                    ),
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 12,
                      color: darkColor,
                    ),
                    Text(
                      ' ${video.likes}  ',
                      style: txtR10d,
                    ),
                    Icon(
                      Icons.thumb_down_alt_outlined,
                      size: 12,
                      color: darkColor,
                    ),
                    Text(
                      ' ${video.dislikes} ',
                      style: txtR10d,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
