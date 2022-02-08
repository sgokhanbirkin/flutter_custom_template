import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'achievement_view_model.dart';
          
class AchievementView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AchievementViewModel>.reactive(
      builder: (BuildContext context, AchievementViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('Achievement View'),
          ),
        );
      },
      viewModelBuilder: () => AchievementViewModel(),
    );
  }
}
