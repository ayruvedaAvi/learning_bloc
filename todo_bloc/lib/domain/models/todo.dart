class Todo {
  final String id;
  final String title;
  final String description;
  final bool isCompleted;
  final bool isFavorite;

  Todo({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.isFavorite,
  });

  Todo toogleCompletion() {
    return Todo(
      id: id,
      title: title,
      description: description,
      isCompleted: !isCompleted,
      isFavorite: isFavorite,
    );
  }

  Todo toogleFavorite() {
    return Todo(
      id: id,
      title: title,
      description: description,
      isCompleted: isCompleted,
      isFavorite: !isFavorite,
    );
  }
  
}