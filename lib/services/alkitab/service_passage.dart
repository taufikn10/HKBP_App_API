import 'package:dio/dio.dart';
import 'package:hkbp_app/models/alkitab/passage_list.dart';

class PassageListServices {
  final String _url = "https://api-alkitab.herokuapp.com/v2/passage/list";
  Dio? _dio;

  PassageListServices() {
    _dio = Dio();
  }

  Future<List<PassageListElement>> getPassageList() async {
    try {
      Response response = await _dio!.get(_url);
      print(response.data);
      PassageListModel passageListModel =
          PassageListModel.fromJson(response.data);
      return passageListModel.passageList;
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }
}
