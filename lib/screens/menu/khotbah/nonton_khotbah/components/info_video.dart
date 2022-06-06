import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/khotbah/video.dart';
import 'package:hkbp_app/models/video_tile.dart';
import 'package:intl/intl.dart';

class InfoDeskripsi extends StatefulWidget {
  const InfoDeskripsi({
    Key? key,
    required this.videoItem,
  }) : super(key: key);

  final VideoItem videoItem;

  @override
  State<InfoDeskripsi> createState() => _InfoDeskripsiState();
}

class _InfoDeskripsiState extends State<InfoDeskripsi> {
  bool isLihatSelengkapnya = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.videoItem.video.title,
            style: txtSB16d,
          ),
          // ignore: prefer_const_constructors
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Diterbitkan',
                        style: txtM10d,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${DateFormat("d MMMM yyyy, kk:mm", "id_ID").format(widget.videoItem.video.publishedAt)} WIB ',
                        style: txtR10d,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, bottom: 19),
                    child: Row(
                      children: [
                        Text(
                          'Dilihat',
                          style: txtM10d,
                        ),
                        const SizedBox(width: 30),
                        // Text(
                        //   widget.video.viewCount,
                        //   style: txtR10d,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.reply_outlined,
                        size: 20,
                        color: darkColor,
                      ),
                      Text(
                        "Sebar",
                        style: txtR10d,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Icon(
                          Icons.thumb_up_alt_outlined,
                          size: 20,
                          color: darkColor,
                        ),
                        // Text(
                        //   widget.video.likes,
                        //   style: txtR10d,
                        // )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.thumb_down_alt_outlined,
                        size: 20,
                        color: darkColor,
                      ),
                      // Text(
                      //   widget.video.dislikes,
                      //   style: txtR10d,
                      // )
                    ],
                  ),
                ],
              )
            ],
          ),
          buildText(
            widget.videoItem.video.description,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isLihatSelengkapnya = !isLihatSelengkapnya;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isLihatSelengkapnya
                        ? "Lihat lihat lebih sedikit"
                        : "Lihat Selengkapnya",
                    style: txtSB12b,
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    isLihatSelengkapnya
                        ? Icons.arrow_drop_up_outlined
                        : Icons.arrow_drop_down,
                    color: blueColor,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildText(String text) {
    final lines = isLihatSelengkapnya ? null : 4;
    return Text(
      text,
      style: GoogleFonts.inter(
        color: darkColor,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.3,
      ),
      textAlign: TextAlign.justify,
      maxLines: lines,
      overflow:
          isLihatSelengkapnya ? TextOverflow.visible : TextOverflow.ellipsis,
    );
  }
}
