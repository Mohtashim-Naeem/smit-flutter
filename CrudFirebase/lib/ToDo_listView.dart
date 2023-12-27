import 'package:flutter/material.dart';

class ToDoListView extends StatefulWidget {
  const ToDoListView({super.key});

  @override
  State<ToDoListView> createState() => _ToDoListViewState();
}

class _ToDoListViewState extends State<ToDoListView> {
  addTask(task) {
    setState(() {
      friendList.add(task);
      Add_task_controller.clear();
    });
  }

  deleteTask({meIndexPassKrunga}) {
    setState(() {
      friendList.removeAt(meIndexPassKrunga);
    });
  }

  updateTask({index, task}) {
    setState(() {
      friendList[index] = task;
      // friendList.removeAt(meIndexPassKrunga);
    });
  }

  // updateTask(task) {
  //   friendList. (task);
  // }

  List<String> friendList = ["Bilal", "Taber", "Ali", "Hassam", "Owais"];
  var Add_task_controller = TextEditingController();
  var updaterController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    addTask(Add_task_controller.text);
                  },
                  icon: Icon(Icons.add_box_rounded)),
              const SizedBox(
                width: 20,
              )
            ],
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(fontSize: 20, color: Colors.white),
                controller: Add_task_controller,
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Text('Add Task'),
                    labelStyle: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
            backgroundColor: Colors.indigo,
          ),
          body: Column(
            children: [
              const Text('TODOListView APP'),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: friendList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        tileColor: Colors.indigoAccent,
                        title: Text(
                          friendList[index],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        leading: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('write to update!'),
                                      content: TextField(
                                        controller: updaterController,
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            updateTask(
                                                index: index,
                                                task: updaterController.text);
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Update.'),
                                        ),
                                      ],
                                    );
                                  });
                            },
                            icon: Icon(Icons.edit_rounded)),
                        trailing: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              deleteTask(meIndexPassKrunga: index);
                            },
                            icon: Icon(Icons.delete_rounded)),
                      ),
                    );
                  })
            ],
          )),
    );
  }
}
