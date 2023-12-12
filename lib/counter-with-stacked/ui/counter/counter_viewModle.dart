import 'package:flutterstacked/counter-with-stacked/app/app.locator.dart';
import 'package:flutterstacked/counter-with-stacked/app/app.router.dart';
import 'package:flutterstacked/counter-with-stacked/services/counter_services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterServices>();

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }

  subValue() {
    counterService.subsCounterValue();
    rebuildUi();
  }

  navigateToHome() {
    navigationService.navigateTo(Routes.homeView);
  }

  navigateToCounter() {
    navigationService.navigateTo(Routes.counterView);
  }
}
