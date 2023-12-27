import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 65),
            height: 100,
            width: 100,
            color: Colors.redAccent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 65),
            height: 100,
            width: 100,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
