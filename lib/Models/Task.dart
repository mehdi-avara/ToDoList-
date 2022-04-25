class Task{
  static List<Task> tasks = [
    Task(
      title: 'Task 1',
      description: 'Description 1',
      date: DateTime.now().toString(),
      isDone: true,
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
  int getId(){
    return this.id;
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
  static void changeIsDone(int id){
    tasks[id].setIsDone(!tasks[id].isDone);
  }
  static void deleteTask(int id){
    tasks.removeAt(id);
  }
  static void addTask(Task task){
    tasks.add(task);
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
  // void deleteTask(){
  //   tasks.remove(this);
  //
  // }

  @override
  String toString() {
    return 'Task{Title: $title, description: $description, date: $date, isDone: $isDone}';
  }
}