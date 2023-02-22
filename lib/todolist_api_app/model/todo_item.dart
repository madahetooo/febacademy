class ToDoItem {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const ToDoItem({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory ToDoItem.fromJson(Map<String, dynamic> json) {
    return ToDoItem(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}
