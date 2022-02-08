import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_custom_template/core/logger.dart';

class AchievementViewModel extends BaseViewModel {
  Logger log;

  AchievementViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
