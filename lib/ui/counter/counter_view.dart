import 'package:flutter/material.dart';
import 'package:flutterstacked/ui/counter/counter_viewModle.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModle, child) {
          return SafeArea(
              child: Scaffold(
                  body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Counter Value"),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Add value")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Go to Home page "))
              ],
            ),
          )));
        });
  }
}
