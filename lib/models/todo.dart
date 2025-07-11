class ToDo {
  String id;
  String todotext;
  bool isDone;

  ToDo({required this.id, required this.todotext, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todotext: 'Check mail', isDone: true),
      ToDo(id: '02', todotext: 'Check mail',isDone: true),
      ToDo(id: '03', todotext: 'Check mail'),
      ToDo(id: '04', todotext: 'Check mail'),
      ToDo(id: '05', todotext: 'Check mail'),
      ToDo(id: '06', todotext: 'Check mail'),
    ];
  }
}
