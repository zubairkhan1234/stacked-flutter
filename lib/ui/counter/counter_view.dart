import 'package:flutter/material.dart';
import 'package:flutterstacked/ui/counter/counter_viewModle.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModle, child) {
          return SafeArea(
              child: Scaffold(
                  body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(viewModle.counterService.counterValue.toString()),
                ElevatedButton(
                    onPressed: () {
                      viewModle.addValue();
                    },
                    child: const Text("Add value")),
                ElevatedButton(
                    onPressed: () {
                      viewModle.navigateToHome();
                    },
                    child: const Text("Go to Home page "))
              ],
            ),
          )));
        });
  }
}
