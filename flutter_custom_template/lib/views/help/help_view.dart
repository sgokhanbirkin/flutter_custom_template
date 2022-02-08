import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'help_view_model.dart';

class HelpView extends StatelessWidget {
  const HelpView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HelpViewModel>.reactive(
      builder: (BuildContext context, HelpViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Text('Help View'),
          ),
        );
      },
      viewModelBuilder: () => HelpViewModel(),
    );
  }
}
