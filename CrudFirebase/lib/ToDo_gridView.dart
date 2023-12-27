import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ToDoGridView extends StatefulWidget {
  const ToDoGridView({super.key});

  @override
  State<ToDoGridView> createState() => _ToDoGridViewState();
}

class _ToDoGridViewState extends State<ToDoGridView> {
  
  TextEditingController TextController = TextEditingController();
  TextEditingController editTextController = TextEditingController();
  addTask() async {
    CircularProgressIndicator();
    await FirebaseFirestore.instance.collection('tasks').add({
      'task': TextController.text,
    });

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Task added!'),
      backgroundColor: Colors.purple[100],
    ));
    TextController.clear();
  }

  editTask(uid) {
    FirebaseFirestore.instance.collection('tasks').doc(uid).update({
      'task': editTextController.text,
    });
    editTextController.clear();
  }

  deleteTask(uid) {
    FirebaseFirestore.instance.collection('tasks').doc(uid).delete();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Task deleted!'),
      backgroundColor: Colors.red[300],
    ));
  }

  customDialog(void Function()? onPress) {
    return AlertDialog(
      title: Text('type to edit!'),
      content: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(color: Colors.purple.shade200, width: 2.5)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: const Color.fromARGB(255, 71, 11, 81), width: 2.5)),
        ),
        controller: editTextController,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 71, 11, 81),
            ),
            onPressed: onPress,
            child: Text('Update.'),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            color: const Color.fromARGB(255, 71, 11, 81),
            height: MediaQuery.of(context).size.height * 0.10,
            width: double.infinity,
            child: Center(
              child: Text(
                'TODO APP',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            // width: MediaQuery.of(context).size.width * 0.7,
            // height: MediaQuery.of(context).size.height * 0.0,
            // height: ,
            child: TextField(
              controller: TextController,
              // autofocus: false,
              // obscureText: false,
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Color(0xffE7E7F2),
                label: Text('type to add!'),
                labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                // prefixIcon: Icon(Icons.search),
                // prefixIconColor: const Color(0xff000221),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.purple.shade200, width: 2.5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 71, 11, 81),
                        width: 2.5)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.2,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                backgroundColor: const Color.fromARGB(255, 71, 11, 81),
                alignment: Alignment.center),
            onPressed: () {
              // print(TextController.text);
              addTask();
            },
            child: Icon(Icons.add_rounded),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'All Tasks',
            style: TextStyle(
                color: const Color.fromARGB(255, 71, 11, 81),
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('tasks')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                          itemCount: snapshot.data!.docs.length,
                          // shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 0,
                                  mainAxisSpacing: 0,
                                  crossAxisCount: 1),
                          itemBuilder: (context, index) {
                            DocumentSnapshot abc = snapshot.data!.docs[index];
                            return Stack(
                              children: [
                                Positioned(
                                  left: 80,
                                  bottom: 170,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: const Color.fromARGB(
                                            255, 71, 11, 81)),
                                    height: 200,
                                    width: 240,
                                    // color: Colors.black,
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  child: Container(
                                    height: 200,
                                    width: 350,
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          abc['task'],
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 30),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              IconButton(
                                                  icon:
                                                      Icon(Icons.edit_rounded),
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    editTextController.text =
                                                        abc['task'];
                                                    showDialog(
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return customDialog(
                                                              () {
                                                            editTask(abc.id);
                                                            Navigator.pop(
                                                                context);
                                                          });
                                                        });
                                                  }),
                                              IconButton(
                                                onPressed: () {
                                                  deleteTask(abc.id);
                                                },
                                                color: Colors.white,
                                                icon:
                                                    Icon(Icons.delete_rounded),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.purple.shade200,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          });
                    }
                    return CircularProgressIndicator();
                  }),
            ),
          )
        ]),
      ),
    );
  }
}
