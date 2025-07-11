class ToDo {
  String id;
  String todotext;
  bool isDone;

  ToDo({required this.id, required this.todotext, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '04', todotext: 'morning excercise'),
      ToDo(id: '01', todotext: 'Check mails', isDone: true),
      ToDo(id: '02', todotext: 'make the bed', isDone: true),
      ToDo(id: '03', todotext: 'buy groceries'),

      ToDo(id: '05', todotext: 'learning flutter for 2 hours'),
      ToDo(id: '06', todotext: 'join the meeting'),
    ];
  }
}
