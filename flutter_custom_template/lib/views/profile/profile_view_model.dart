import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_custom_template/core/logger.dart';

class ProfileViewModel extends BaseViewModel {
  Logger log;

  ProfileViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
