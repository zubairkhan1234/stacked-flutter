import 'package:flutter/material.dart';
import 'package:flutterstacked/counter-with-stacked/app/app.locator.dart';
import 'package:flutterstacked/counter-with-stacked/app/app.router.dart';
import 'package:flutterstacked/counter-with-stacked/ui/counter/counter_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
