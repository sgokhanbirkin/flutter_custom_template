import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'search_view_model.dart';
          
class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      builder: (BuildContext context, SearchViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('Search View'),
          ),
        );
      },
      viewModelBuilder: () => SearchViewModel(),
    );
  }
}
