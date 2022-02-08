import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_custom_template/core/logger.dart';

class HelpViewModel extends BaseViewModel {
  Logger log;

  HelpViewModel() {
    log = getLogger(runtimeType.toString());
  }
}
