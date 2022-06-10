// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/khotbah/channel.dart';
import 'package:hkbp_app/models/khotbah/count.dart';
import 'package:hkbp_app/models/khotbah/video.dart';
import 'package:hkbp_app/screens/menu/khotbah/nonton_khotbah/nonton_page.dart';
import 'package:hkbp_app/services/khotbah/khotbah_service.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class BodyKhotbah extends StatefulWidget {
  // final Video1 video;

  const BodyKhotbah({Key? key}) : super(key: key);

  @override
  State<BodyKhotbah> createState() => _BodyKhotbahState();
}

class _BodyKhotbahState extends State<BodyKhotbah> {
  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initializeDateFormatting('id_ID', null);
  }

  late ChannelInfo _channelInfo;
  late VideosList _videosList;
  late Item _item;
  late bool _loading;
  late String _playListId;
  late String _nextPageToken;

  @override
  void initState() {
    super.initState();
    _loading = true;
    _nextPageToken = "";
    _videosList = VideosList(
        etag: '', kind: '', nextPageToken: '', videos: [], pageInfo: null);
    _videosList.videos = [];
    _getChannelInfo();
  }

  _getChannelInfo() async {
    _channelInfo = await ServicesKhotbah.getChannelInfo();
    _item = _channelInfo.items[0];
    _playListId = _item.contentDetails.relatedPlaylists.uploads;
    print('_playlistId $_playListId');
    await _loadVideos();
    setState(() {
      _loading = false;
    });
  }

  _loadVideos() async {
    VideosList tempVideosList = await ServicesKhotbah.getVideosList(
      playListId: _playListId,
      pageToken: _nextPageToken,
    );
    _nextPageToken = tempVideosList.nextPageToken!;
    _videosList.videos.addAll(tempVideosList.videos);
    print('videos: ${_videosList.videos.length}');
    print('_nextPageToken $_nextPageToken');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id', null);
    return _loading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            shrinkWrap: true,
            itemCount: _videosList.videos.length,
            itemBuilder: (contex, index) {
              VideoItem videoItem = _videosList.videos[index];
              return Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NontonPage(videoItem: videoItem))),
                    child: Stack(
                      children: [
                        Image.network(
                          videoItem.video.thumbnails.medium.url,
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
                              videoItem.video.resourceId.videoId,
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
                            videoItem.video.title,
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
                                ' ${DateFormat("d MMMM yyyy", "id_ID").format(videoItem.video.publishedAt)} • ',
                                style: txtR10d,
                              ),
                              Icon(
                                Icons.visibility_outlined,
                                size: 12,
                                color: darkColor,
                              ),
                              Text(
                                ' ${videoItem.video.resourceId.videoId} • ',
                                style: txtR10d,
                              ),
                              Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 12,
                                color: darkColor,
                              ),
                              // Text(
                              //   ' ${widget.video.likes}  ',
                              //   style: txtR10d,
                              // ),
                              Icon(
                                Icons.thumb_down_alt_outlined,
                                size: 12,
                                color: darkColor,
                              ),
                              // Text(
                              //   ' ${widget.video.dislikes} ',
                              //   style: txtR10d,
                              // )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          );
  }
}
