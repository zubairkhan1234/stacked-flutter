import 'package:flutter/material.dart';
import 'package:flutterstacked/counter-with-stacked/app/app.router.dart';
import 'package:flutterstacked/counter-with-stacked/ui/counter/counter_viewModle.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              body: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                Text(viewModel.counterService.counterValue.toString()),
                ElevatedButton(
                    onPressed: () {
                      viewModel.navigateToCounter();
                    },
                    child: const Text('Go Counter Page')),
              ])));
        });
  }
}
