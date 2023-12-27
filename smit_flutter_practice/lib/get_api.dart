import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:smit_flutter_practice/models/post_model.dart';
import 'package:smit_flutter_practice/models/userpic_model.dart';
import 'package:smit_flutter_practice/profile.dart';

import 'models/user_model.dart';

class GetApi extends StatefulWidget {
  const GetApi({super.key});

  @override
  State<GetApi> createState() => _GetApiState();
}

class _GetApiState extends State<GetApi> {
  Future<List<UserModel>> getPost() async {
    List<UserModel> allPosts = [];
    var url = Uri.https('jsonplaceholder.typicode.com', '/photos');
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body);
    // UserModel userObj = UserModel();
    for (var i in responseBody) {
      allPosts.add(UserModel.fromJson(i));
    }
    // userObj!.!;

    // print('================${userObj!.name}=================');
    return allPosts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await getPost();
      }),
      body: FutureBuilder(
          future: getPost(),
          builder: ((context, AsyncSnapshot<List<UserModel>> snapshot) {
            // print('done');

            if (snapshot.hasData &&
                snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Map<String, dynamic> data =
                            snapshot.data![index].toJson();
                        print(data);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile(data: data)));
                      },
                      title:
                          Text("${snapshot.data?[index].id ?? 'not provided'}"),
                      subtitle: Text(snapshot.data?[index].title ?? 'No Title'),
                      leading: Image.network(snapshot.data?[index].url ??
                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.profilepicture.ai%2F&psig=AOvVaw00VEAfNx0Q9FHnyi0APgdC&ust=1697971802708000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNj-s4L8hoIDFQAAAAAdAAAAABAE'),
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          })),
    );
  }
}
