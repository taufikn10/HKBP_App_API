// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:hkbp_app/models/alkitab/alkitab.dart';
import 'package:http/http.dart' as http;

class AlkitabService {
  Future<AlKitab> getKitab(String passage, int chapter) async {
    final _url =
        "https://api-alkitab.herokuapp.com/v2/passage/$passage/$chapter?ver=tb";
    var apiResult = await http.get(Uri.parse(_url));
    print(apiResult.body);
    var jsonObject = jsonDecode(apiResult.body);
    return AlKitab.fromJson(jsonObject);
  }

  Future<List<Verse>> getVerses(String passage, int chapter) async {
    final _url =
        "https://api-alkitab.herokuapp.com/v2/passage/$passage/$chapter?ver=tb";
    var apiResult = await http.get(Uri.parse(_url));
    print(apiResult.body);
    var jsonObject = jsonDecode(apiResult.body);
    List<dynamic> listVerses = (jsonObject as Map<String, dynamic>)["verses"];
    List<Verse> verses = [];
    for (int i = 1; i < listVerses.length; i++) {
      verses.add(Verse.fromJson(listVerses[i]));
    }
    return verses;
  }

  Future<List<Verse>> getTitle(String passage, int chapter) async {
    final _url =
        "https://api-alkitab.herokuapp.com/v2/passage/$passage/$chapter?ver=tb";
    var apiResult = await http.get(Uri.parse(_url));
    print(apiResult.body);
    var jsonObject = jsonDecode(apiResult.body);
    List<dynamic> listVerses = (jsonObject as Map<String, dynamic>)["verses"];
    List<Verse> verses = [];
    for (int i = 0; i < listVerses.length; i++) {
      verses.add(Verse.fromJson(listVerses[i]));
    }
    return verses;
  }
}
