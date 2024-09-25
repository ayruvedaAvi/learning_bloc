import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo/presentation/todo_page.dart';

import 'data/models/isar_todo.dart';
import 'data/repository/isar_todo_repo.dart';
import 'domain/repository/todo_repo.dart';

///make the main async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //get directory path for storing data
  final dir = await getApplicationDocumentsDirectory();

  // open isar database
  final isar =
      await Isar.open([TodoIsarSchema], directory: dir.path);

  // initialize the repository
  final isarTodoRepo = IsarTodoRepo(isar);

  //inject the repository into the todo page
  runApp(MyApp(todoRepo: isarTodoRepo,));
}

class MyApp extends StatelessWidget {
  final TodoRepo todoRepo;
  const MyApp({Key? key, required this.todoRepo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(todoRepo: todoRepo),
    );
  }
}
