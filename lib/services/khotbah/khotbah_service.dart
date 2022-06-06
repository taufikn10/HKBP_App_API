// ignore_for_file: avoid_print

import 'dart:io';

import 'package:hkbp_app/Utils/khotbah_utils.dart';
import 'package:hkbp_app/models/khotbah/channel.dart';
import 'package:hkbp_app/models/khotbah/count.dart';
import 'package:hkbp_app/models/khotbah/video.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ServicesKhotbah {
  //
  static const channelId = 'UCFh11Eogyk5Z2a34antspdQ';
  static const videoId = 'V21GHLW6PU8';
  static const _baseUrl = 'youtube.googleapis.com';

  static Future<ChannelInfo> getChannelInfo() async {
    Map<String, String> parameters = {
      'part': 'snippet,contentDetails,statistics',
      'id': channelId,
      'key': KhotbahConstans.apiKeyVideo,
    };
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'aplication/json',
    };
    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/channels',
      parameters,
    );
    Response response = await http.get(uri, headers: headers);
    // print(response.body);
    ChannelInfo channelInfo = channelInfoFromJson(response.body);
    return channelInfo;
  }

  static Future<VideosList> getVideosList(
      {String? playListId, String? pageToken}) async {
    Map<String, String> parameters = {
      'part': 'snippet',
      'playlistId': playListId.toString(),
      'maxResults': '10',
      'pageToken': pageToken.toString(),
      'key': KhotbahConstans.apiKeyVideo,
    };
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/playlistItems',
      parameters,
    );
    Response response = await http.get(uri, headers: headers);
    // print(response.body);
    VideosList videosList = videosListFromJson(response.body);
    return videosList;
  }

  static Future<VideosCount> getVideosCount({String? countId}) async {
    Map<String, String> parameters = {
      'part': 'statistics',
      'id': channelId,
      'count': countId.toString(),
      'key': KhotbahConstans.apiKeyVideo,
    };
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/videos',
      parameters,
    );
    Response response = await http.get(uri, headers: headers);
    print(response.body);
    VideosCount videosCount = videosCountFromJson(response.body);
    return videosCount;
  }
}
