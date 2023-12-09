import 'package:flutter/material.dart';
import 'package:flutterstacked/app/app.router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ElevatedButton(
            onPressed: () {
            },
            child: const Text('Go Counter Page')));
  }
}
