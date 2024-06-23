class NoteModel {
  final String title;
  final String description;
  final String date;
  final int color;

  NoteModel(
      {required this.color,
      required this.title,
      required this.description,
      required this.date});

  factory NoteModel.fromjson(Map<String, dynamic> json) {
    return NoteModel(
      title: json['title'],
      description: json['description'],
      date: json['date'],
      color: json['color'],
    );
  }
}
