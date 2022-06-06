import 'dart:convert';

VideosCount videosCountFromJson(String str) =>
    VideosCount.fromJson(json.decode(str));

String videosCountToJson(VideosCount data) => json.encode(data.toJson());

class VideosCount {
  VideosCount({
    required this.kind,
    required this.etag,
    required this.counts,
    required this.pageInfo,
  });

  String? kind;
  String? etag;
  List<CountItem> counts;
  PageInfo? pageInfo;

  factory VideosCount.fromJson(Map<String, dynamic> json) => VideosCount(
        kind: json["kind"],
        etag: json["etag"],
        counts: json["items"] != null
            ? List<CountItem>.from(
                json["items"].map((x) => CountItem.fromJson(x))).toList()
            : [],
        pageInfo: PageInfo.fromJson(json["pageInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "etag": etag,
        "items": List<dynamic>.from(counts.map((x) => x.toJson())),
        "pageInfo": pageInfo!.toJson(),
      };
}

class CountItem {
  CountItem({
    required this.kind,
    required this.etag,
    required this.id,
    required this.statistics,
  });

  String kind;
  String etag;
  String id;
  StatisticsVideo statistics;

  factory CountItem.fromJson(Map<String, dynamic> json) => CountItem(
        kind: json["kind"],
        etag: json["etag"],
        id: json["id"],
        statistics: StatisticsVideo.fromJson(json["statistics"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "etag": etag,
        "id": id,
        "statistics": statistics.toJson(),
      };
}

class StatisticsVideo {
  StatisticsVideo({
    required this.viewCount,
    required this.likeCount,
    required this.favoriteCount,
    required this.commentCount,
  });

  String viewCount;
  String likeCount;
  String favoriteCount;
  String commentCount;

  factory StatisticsVideo.fromJson(Map<String, dynamic> json) =>
      StatisticsVideo(
        viewCount: json["viewCount"],
        likeCount: json["likeCount"],
        favoriteCount: json["favoriteCount"],
        commentCount: json["commentCount"],
      );

  Map<String, dynamic> toJson() => {
        "viewCount": viewCount,
        "likeCount": likeCount,
        "favoriteCount": favoriteCount,
        "commentCount": commentCount,
      };
}

class PageInfo {
  PageInfo({
    required this.totalResults,
    required this.resultsPerPage,
  });

  int totalResults;
  int resultsPerPage;

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        totalResults: json["totalResults"],
        resultsPerPage: json["resultsPerPage"],
      );

  Map<String, dynamic> toJson() => {
        "totalResults": totalResults,
        "resultsPerPage": resultsPerPage,
      };
}
