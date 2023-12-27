import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state_management/views/home/home_viewmodel.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: ((context, viewModel, child) {
          return Scaffold(
            body: Column(
              children: [
                Center(
                    child: Text(
                  viewModel.counter.toString(),
                  style: TextStyle(
                    fontSize: 40,
                  ),
                )),
                ElevatedButton(
                  onPressed: () {
                    viewModel.increamentCounter();
                  },
                  child: Text('add'),
                ),
              ],
            ),
          );
        }));
  }
}
