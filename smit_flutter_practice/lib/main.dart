import 'package:flutter/material.dart';
import 'package:smit_flutter_practice/get_api.dart';

import 'chat_view.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetApi(),
    );
  }
}
