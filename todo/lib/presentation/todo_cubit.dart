/*

TO DO CUBIT - simple state management

Each cubit is a list of todos.

*/

import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/models/todo.dart';
import '../domain/repository/todo_repo.dart';

class TodoCubit extends Cubit<List<Todo>> {
  //reference todo repo
  final TodoRepo todoRepo;

  TodoCubit(this.todoRepo) : super([]){
    loadTodos();
  }

  //load todos
  void loadTodos() async {
    final todos = await todoRepo.getTodos();
    emit(todos);
  }

  //Add
  void addTodo(String text) async {
    final newTodo = Todo(id: DateTime.now().millisecondsSinceEpoch, text: text, isCompleted: false);
    await todoRepo.addTodo(newTodo);
    loadTodos();
  }

  //Delete
  void delete(Todo todo) async {
    await todoRepo.deleteTodo(todo);
    loadTodos();
  }

  //Toogle
  void toggle(Todo todo) async {
    final updatedTodo = todo.toogleCompletion();
    await todoRepo.updateTodo(updatedTodo);
    loadTodos();
  }
  
}