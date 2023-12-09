import 'package:flutterstacked/app/app.locator.dart';
import 'package:flutterstacked/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navigationServices = locator<LazySingleton>();

  navigateToCounterView(){
    // navigationServices.();
  }


}
