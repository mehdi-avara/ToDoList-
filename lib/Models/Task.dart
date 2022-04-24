class Task{
  String name;
  String description;
  String date;
  bool isDone;
  Task({this.name, this.description, this.date, this.isDone});
  @override
  String toString() {
    return 'Task{name: $name, description: $description, date: $date, isDone: $isDone}';
  }
}