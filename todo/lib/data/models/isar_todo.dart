/*

ISAR TO DO MODEL

Converts todo model into isar todo model so that we can store it in the isar database.

*/

import 'package:isar/isar.dart';

import '../../domain/models/todo.dart';

part 'isar_todo.g.dart';

@Collection()
class TodoIsar {
  Id id = Isar.autoIncrement;
  late String text;
  late bool isCompleted;

  //convert isar object to todo object
  Todo toDomain() {
    return Todo(
      id: id,
      text: text,
      isCompleted: isCompleted,
    );
  }

  //convert todo object to isar object
  static TodoIsar fromDomain(Todo todo) {
    return TodoIsar()
      ..id = todo.id
      ..text = todo.text
      ..isCompleted = todo.isCompleted;
  }

}