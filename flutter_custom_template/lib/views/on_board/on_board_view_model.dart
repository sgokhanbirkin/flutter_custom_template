import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_custom_template/core/logger.dart';

class OnBoardViewModel extends BaseViewModel {
  Logger log;

  OnBoardViewModel() {
    log = getLogger(runtimeType.toString());
  }
}
