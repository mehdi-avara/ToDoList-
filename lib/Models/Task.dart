class Task{
  static List<Task> tasks = [
    Task(
      title: 'Task 1',
      description: 'Description 1',
      date: DateTime.now().toString(),
      isDone: false,
    ),
    Task(
      title: 'Task 2',
      description: 'Description 2',
      date: DateTime.now().toString(),
      isDone: false,
    ),
    Task(
      title: 'Task 3',
      description: 'Description 3',
      date: DateTime.now().toString(),
      isDone: false,
    ),
  ];
  final int id = counter++;
  String title;
  String description;
  String date;
  bool isDone;
  static int counter = 0;
  Task({this.title, this.description, this.date, this.isDone});
  void setTitle(String title){
    this.title = title;
  }
  void setDescription(String description){
    this.description = description;
  }
  void setDate(String date){
    this.date = date;
  }
  void setIsDone(bool isDone){
    this.isDone = isDone;
  }
  void changeIsDone(){
    this.isDone = !this.isDone;
  }
  String getTitle(){
    return this.title;
  }
  String getDescription(){
    return this.description;
  }
  String getDate(){
    return this.date;
  }
  bool getIsDone(){
    return this.isDone;
  }
  equals(Task task){
    return this.id == task.id;
  }
  void deleteTask(){
    tasks.remove(this);

  }

  @override
  String toString() {
    return 'Task{Title: $title, description: $description, date: $date, isDone: $isDone}';
  }
}