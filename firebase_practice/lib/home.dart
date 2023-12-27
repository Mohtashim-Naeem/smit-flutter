import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  final String documentId;
  Home({super.key, required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    FutureBuilder data() {
      return FutureBuilder(
        future: users.doc(documentId).get(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("Something went wrong");
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return Text("Document does not exist");
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      data['profile'],
                      width: 100,
                    )),
                Text(data['name']),
                Text('${data['email']} | ${data['contact']}'),
              ],
            );
          }

          return Text("loading");
        },
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff202020),
        body: Stack(
          children: [
            SvgPicture.asset(
              'assets/images/Rectangle 49.svg',
              width: MediaQuery.sizeOf(context).width,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                data(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
