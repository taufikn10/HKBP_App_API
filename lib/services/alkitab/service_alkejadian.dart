// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:hkbp_app/models/alkitab/kejadian.dart';
// import 'package:hkbp_app/models/alkitab/kejadian.dart';

class ServicesAlkitab {
  final String _url =
      "https://api-alkitab.herokuapp.com/v3/passage/Kej/1?ver=tb";
  Dio? _dio;

  ServicesAlkitab() {
    _dio = Dio();
  }

  Future<List<Verse>> getVerse() async {
    try {
      Response response = await _dio!.get(_url);
      print(response.data);
      AlKejadian alKejadian = AlKejadian.fromJson(response.data);
      return alKejadian.verses;
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<AlKejadian> getDataAlkitab() async {
    try {
      Response response = await _dio!.get(_url);
      AlKejadian alKejadian = AlKejadian.fromJson(response.data);
      return alKejadian;
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }
}
