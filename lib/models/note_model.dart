import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

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
