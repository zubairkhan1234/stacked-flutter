import 'package:flutterstacked/app/app.locator.dart';
import 'package:flutterstacked/app/app.router.dart';
import 'package:flutterstacked/services/counter_services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {

  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterServices>();

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }

  navigateToHome() {
    navigationService.navigateTo(Routes.homeView);
  }
}
