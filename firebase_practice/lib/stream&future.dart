import 'package:flutter/material.dart';

class StreamAndFuture extends StatefulWidget {
  const StreamAndFuture({super.key});

  @override
  State<StreamAndFuture> createState() => _StreamAndFutureState();
}

class _StreamAndFutureState extends State<StreamAndFuture> {
  Future<int> futureCounter(counter) async {
    await Future.delayed(Duration(seconds: 3));
    return counter + counter;
  }

  Stream<int> streamCounter() async* {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
    yield* streamCounter();
  }

  Stream<int> word(int n) async* {
    if (n > 0) {
      await Future.delayed(Duration(seconds: 1));
      yield n;
      yield* word(n - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
                future: futureCounter(10),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text(
                      'future ${snapshot.data.toString()}',
                      style: TextStyle(fontSize: 40),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
            StreamBuilder(
                stream: streamCounter(),
                builder: (context, snapshot) {
                  return Text(
                    'Stream${snapshot.data}',
                    style: TextStyle(fontSize: 40),
                  );
                })
          ]),
    );
  }
}
