import 'package:flutter/material.dart';
import 'package:flutter_custom_template/views/achievement/achievement_view.dart';
import 'package:flutter_custom_template/views/home/home_view.dart';
import 'package:flutter_custom_template/views/profile/profile_view.dart';
import 'package:flutter_custom_template/views/search/search_view.dart';
import 'package:stacked/stacked.dart';
import 'root_view_model.dart';

class RootView extends StatefulWidget {
  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RootViewModel>.reactive(
      builder: (BuildContext context, RootViewModel viewModel, Widget _) {
        return Scaffold(
          body: getBody(),
          bottomNavigationBar: getBottomNavigationBar(),
        );
      },
      viewModelBuilder: () => RootViewModel(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: selectedIndex,
      children: [
        const HomeView(),
        SearchView(),
        AchievementView(),
        ProfileView(),
      ],
    );
  }

  Widget getBottomNavigationBar() {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            icon: selectedIndex == 0
                ? const Icon(Icons.home, color: Colors.orangeAccent)
                : const Icon(Icons.home, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            icon: selectedIndex == 1
                ? const Icon(Icons.search, color: Colors.orangeAccent)
                : const Icon(Icons.search, color: Colors.grey),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              icon: selectedIndex == 2
                  ? const Icon(Icons.emoji_events_outlined,
                      color: Colors.orangeAccent)
                  : const Icon(Icons.emoji_events_outlined,
                      color: Colors.grey)),
          IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              icon: selectedIndex == 3
                  ? const Icon(Icons.person, color: Colors.orangeAccent)
                  : const Icon(Icons.person, color: Colors.grey)),
        ],
      ),
    );
  }
}
