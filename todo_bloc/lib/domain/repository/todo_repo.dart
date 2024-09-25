import '../models/todo.dart';

abstract class TodoRepo {
  //get a list of todo
  Future<List<Todo>> getTodos();

  //add a todo
  Future<void> addTodo(Todo todo);

  //delete a todo
  Future<void> deleteTodo(Todo todo);

  //update a todo
  Future<void> updateTodo(Todo todo); 

}