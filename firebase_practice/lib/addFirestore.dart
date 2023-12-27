import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  // final String fullName;
  // final String company;
  // final int age;

  AddUser();

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'full_name': 'zunaisha', // John Doe
            'company': 'zuniarts', // Stokes and Sons
            'age': 16
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot abc = snapshot.data!.docs[index];
              return ListTile(
                title: Text('${abc['name']} ${abc.id}'),
                subtitle: Text(abc['Father name']),
              );
            },
          );
        }
        return CircularProgressIndicator();
      },
    ));
  }
}
