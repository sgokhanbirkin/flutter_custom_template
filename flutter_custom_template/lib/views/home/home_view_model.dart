import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_custom_template/core/logger.dart';

class HomeViewModel extends BaseViewModel {
  Logger log;

  HomeViewModel() {
    log = getLogger(runtimeType.toString());
  }
}
