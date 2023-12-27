import 'package:flutter/material.dart';
import 'package:smit_flutter_practice/models/userpic_model.dart';

class Profile extends StatelessWidget {
  final Map<String, dynamic> data;
  const Profile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    UserModel dataModel = UserModel.fromJson(data);

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundImage: NetworkImage(dataModel.url ??
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.profilepicture.ai%2F&psig=AOvVaw00VEAfNx0Q9FHnyi0APgdC&ust=1697971802708000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNj-s4L8hoIDFQAAAAAdAAAAABAE')),
            Text('${dataModel.title}'),
          ],
        ),
      ),
    );
  }
}
