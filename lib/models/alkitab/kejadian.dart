// ignore_for_file: constant_identifier_names

class AlKejadian {
  AlKejadian({
    required this.title,
    required this.bookNumber,
    required this.chapter,
    required this.verses,
  });

  String title;
  int bookNumber;
  int chapter;
  List<Verse> verses;

  factory AlKejadian.fromJson(Map<String, dynamic> json) => AlKejadian(
        title: json["title"],
        bookNumber: json["book_number"],
        chapter: json["chapter"],
        verses: List<Verse>.from(json["verses"].map((x) => Verse.fromJson(x))),
      );
}

class Verse {
  Verse({
    required this.verse,
    required this.type,
    required this.content,
  });

  int verse;
  Type? type;
  String content;

  factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        verse: json["verse"],
        type: typeValues.map[json["type"]],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "verse": verse,
        "type": typeValues.reverse[type],
        "content": content,
      };
}

enum Type { TITLE, TEXT }

final typeValues = EnumValues({"text": Type.TEXT, "title": Type.TITLE});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}
