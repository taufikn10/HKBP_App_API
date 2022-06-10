// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hkbp_app/models/alkitab/kejadian.dart';

class ServicesAlkitab {
  Dio? _dio;

  ServicesAlkitab() {
    _dio = Dio();
  }

  Future<AlKejadian> getDataAlkitab(String passage, int chapter) async {
    String _url =
        "https://api-alkitab.herokuapp.com/v2/passage/$passage/$chapter?ver=tb";
    try {
      Response response = await _dio!.get(_url);
      AlKejadian alKejadian = AlKejadian.fromJson(response.data);
      return alKejadian;
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<Verse>> getVerse(String passage, int chapter) async {
    final _url =
        "https://api-alkitab.herokuapp.com/v2/passage/$passage/$chapter?ver=tb";
    try {
      Response response = await _dio!.get(_url);
      print(response.data);
      var jsonObject = jsonDecode(response.data);
      List<dynamic> listVerses = (jsonObject as Map<String, dynamic>)["verses"];
      List<Verse> verses = [];
      for (int i = 0; i < listVerses.length; i++) {
        verses.add(Verse.fromJson(listVerses[i]));
      }
      return verses;
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }
}
