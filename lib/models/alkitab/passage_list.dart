class PassageListModel {
  PassageListModel({
    required this.passageList,
  });

  List<PassageListElement> passageList;

  factory PassageListModel.fromJson(Map<String, dynamic> json) =>
      PassageListModel(
        passageList: List<PassageListElement>.from(
            json["passage_list"].map((x) => PassageListElement.fromJson(x))),
      );
}

class PassageListElement {
  PassageListElement({
    required this.bookNumber,
    required this.abbreviation,
    required this.bookName,
    required this.totalChapter,
  });

  int bookNumber;
  String abbreviation;
  String bookName;
  int totalChapter;

  factory PassageListElement.fromJson(Map<String, dynamic> json) =>
      PassageListElement(
        bookNumber: json["book_number"],
        abbreviation: json["abbreviation"],
        bookName: json["book_name"],
        totalChapter: json["total_chapter"],
      );
}
