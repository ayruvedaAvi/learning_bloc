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

/*
  - The TodoRepo abstract class defines the methods that the TodoRepoImpl class must implement. 

  - The TodoRepoImpl class will be responsible for interacting with the data source to perform CRUD operations on the Todo objects.

  -technology agnostic, which means that the TodoRepoImpl class can interact with any data source, such as a local database, a remote server, or a file system.
*/