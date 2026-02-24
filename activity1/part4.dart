import 'part2.dart'; 
import 'part3.dart'; 

void main() {

  List<Todo> todos = [
    Todo(
      id: "1",
      text: "Morning run",
      isDone: false,
      category: Category.health,
      priority: Priority.mid,
    ),
    Todo(
      id: "2",
      text: "Design review",
      isDone: false,
      category: Category.work,
      priority: Priority.high,
    ),
    Todo(
      id: "3",
      text: "Read 30 pages",
      isDone: true,
      category: Category.personal,
      priority: Priority.low,
    ),
  ];

  final doneTodos = todos.where((t) => t.isDone).toList();
  print("Done todos: ${doneTodos.length}");

  final textList = todos.map((t) => t.text).toList();
  print("Todo texts: $textList");

  bool hasUrgent = todos.any((t) => t.priority == Priority.high);
  print("Has urgent task: $hasUrgent");

  final updatedTodos = [
    ...todos,
    Todo(
      id: "4",
      text: "Sketch logos",
      isDone: false,
      category: Category.creative,
      priority: Priority.mid,
    ),
  ];
  print("Total todos: ${updatedTodos.length}");
}