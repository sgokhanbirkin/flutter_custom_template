import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_custom_template/core/logger.dart';

class SearchViewModel extends BaseViewModel {
  Logger log;

  SearchViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
