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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          viewModle.addValue();
                        },
                        child: const Text("Increament")),
                    ElevatedButton(
                        onPressed: () {
                          viewModle.subValue();
                        },
                        child: const Text("Decreament")),
                  ],
                ),
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
