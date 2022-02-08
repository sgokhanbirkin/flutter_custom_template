import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_custom_template/core/logger.dart';

class SplashViewModel extends BaseViewModel {
  Logger log;

  SplashViewModel() {
    log = getLogger(runtimeType.toString());
  }
}
