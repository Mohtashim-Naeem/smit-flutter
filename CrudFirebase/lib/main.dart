import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smit_first/ToDo_gridView.dart';
import 'package:smit_first/ToDo_listView.dart';
import 'package:smit_first/firebase_options.dart';
import 'package:smit_first/firebase_storagePrac.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            // appBar: AppBar(backgroundColor: Colors.red),
            body: ToDoGridView()));
  }
}
