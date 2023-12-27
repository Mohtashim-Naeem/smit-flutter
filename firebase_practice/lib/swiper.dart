import 'package:card_swiper/card_swiper.dart';
import 'package:firebase_practice/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SwiperScreen extends StatelessWidget {
  final uid;
  SwiperScreen({super.key, this.uid});
  List<String> images = [
    'assets/images/Pillows 1.svg',
    'assets/images/Pillows 2.svg',
    'assets/images/Pillows 3.svg',
    'assets/images/Pillows 4.svg',
  ];
  @override
  Widget build(BuildContext context) {
    // print(object)
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                ),
                Row(
                  children: [
                    Icon(Icons.person, color: Colors.white),
                    Text(
                      'Mohtashim',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ]),
          backgroundColor: Color.fromARGB(255, 4, 2, 28),
        ),
        backgroundColor: Color(0xff07042E),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Swiper(
            allowImplicitScrolling: true,
            outer: true,
            itemBuilder: (BuildContext context, int index) {
              return SvgPicture.asset(images[index]);
            },
            itemCount: images.length,
            itemWidth: 225.0,
            itemHeight: 225.0,
            layout: SwiperLayout.STACK,
          ),
        ),
      ),
    );
  }
}
