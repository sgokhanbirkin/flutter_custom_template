import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_custom_template/core/logger.dart';

class RootViewModel extends BaseViewModel {
  Logger log;

  RootViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
