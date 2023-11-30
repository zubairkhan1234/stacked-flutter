import 'package:flutterstacked/ui/counter/counter_view.dart';
import 'package:flutterstacked/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(page: CounterView),
  MaterialRoute(page: HomeView),
], dependencies: [])
class App {}
