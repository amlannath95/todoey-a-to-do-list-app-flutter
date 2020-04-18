class Task {
  final String name;
  bool isDone;

  Task(
      {this.name,
      this.isDone =
          false}); //Since, by default all new tasks are not done hence isDone = false

  void toggleDone() {
    isDone = !isDone;
  }
}
