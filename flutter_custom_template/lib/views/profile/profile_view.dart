import 'package:flutter/material.dart';
import 'package:flutter_custom_template/theme/theme.dart';
import 'package:flutter_custom_template/widgets/smart_widgets/arrow_card_widgets.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'profile_view_model.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (BuildContext context, ProfileViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(size.height),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.7),
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.1),
                    Colors.redAccent.withOpacity(0.1),
                    Colors.redAccent.withOpacity(0.4),
                    Colors.redAccent.withOpacity(0.7),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 64.0, left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            customIconButton(size, Icons.favorite, true),
                            const SizedBox(width: 8),
                            customIconButton(
                                size, Icons.cloud_download_rounded, false),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            customIconButton(size, Icons.favorite, false),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Column(
                      children: [
                        Text(
                          'WEEK 1 - DAY 2',
                          style: ThemeYellow()
                              .yellowTheme
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.redAccent, fontSize: 12),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Positive Thinking',
                            style: ThemeYellow()
                                .yellowTheme
                                .textTheme
                                .headline2
                                .copyWith(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Meditation',
                            style: ThemeYellow()
                                .yellowTheme
                                .textTheme
                                .headline2
                                .copyWith(),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: size.width * 0.7,
                            child: Text(
                              'Cu vide suavitate gubergren vis, duo ad idque suscipit. unum imptus ullamcorper vel asdqd asdqdsada qwdasdasd',
                              style: ThemeYellow()
                                  .yellowTheme
                                  .textTheme
                                  .bodyText1
                                  .copyWith(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 64.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('clicked');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            //color: Colors.black,
                            width: size.width * 0.3,
                            height: size.height * 0.2,
                            child: ArrowCardWidget(
                              circularRatio: 50,
                              bgColor: Colors.orangeAccent,
                              size: size,
                              ratio: 5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8, right: 8, left: 8),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            width: double.infinity,
                            height: size.height * 0.3,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => ProfileViewModel(),
    );
  }

  Widget customIconButton(Size size, IconData icon, bool active) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      width: size.width * 0.08,
      height: size.width * 0.08,
      child: Center(
        child: IconButton(
          icon: active
              ? Icon(
                  icon,
                  color: Colors.orangeAccent,
                  size: 15,
                )
              : Icon(
                  icon,
                  color: Colors.grey,
                  size: 15,
                ),
          onPressed: () {},
        ),
      ),
    );
  }
}
