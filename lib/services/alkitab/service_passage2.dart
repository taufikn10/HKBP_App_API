import 'dart:convert';

import 'package:hkbp_app/models/alkitab/passage_list.dart';
import 'package:http/http.dart' as http;

class PassageListServices {
  final String _url = "https://api-alkitab.herokuapp.com/v2/passage/list";

  Future<List<PassageListElement>> getPassageList(String query) async {
    final url = Uri.parse(_url);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonObject = jsonDecode(response.body);
      List<dynamic> listPassage =
          (jsonObject as Map<String, dynamic>)["passage_list"];
      List<PassageListElement> passage = [];
      for (int i = 0; i < listPassage.length; i++) {
        passage.add(PassageListElement.fromJson(listPassage[i]));
      }
      return passage.where((judul) {
        final bookName = judul.bookName.toLowerCase();
        final searchLower = query.toLowerCase();
        return bookName.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
