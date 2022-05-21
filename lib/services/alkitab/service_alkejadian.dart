import 'package:dio/dio.dart';
import 'package:hkbp_app/models/alkitab/kejadian.dart';

class ServicesAlkitab {
  final String _url =
      "https://api-alkitab.herokuapp.com/v3/passage/Kej/1?ver=tb";
  Dio? _dio;

  ServicesAlkitab() {
    _dio = Dio();
  }

  Future<List<Verse>> fetchAlkejadianService() async {
    try {
      Response response = await _dio!.get(_url);
      AlKejadian alKejadian = AlKejadian.fromJson(response.data);
      return alKejadian.verses;
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }
}
