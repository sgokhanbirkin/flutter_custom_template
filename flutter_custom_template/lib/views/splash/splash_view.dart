import 'package:flutter/material.dart';
import 'package:flutter_custom_template/views/splash/widgets/app_bar_actions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'splash_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (BuildContext context, SplashViewModel viewModel, Widget _) {
        return Scaffold(
          /// Side slider menu came to [Drawer] its was Custom.
          drawer: const Drawer(),

          /// Top App Bar will be modified by [AppBar]
          appBar: AppBar(
            actions: const [AppBarActions()],

            /// App Title String Method -> [.AppLocalizations]
            title: Text(
              AppLocalizations.of(context).title,
              style: const TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leadingWidth: 56,
            leading: Row(
              children: [
                Container(
                  width: 28,
                  height: 30,
                  color: Colors.green,
                ),
                Container(
                  width: 28,
                  height: 30,
                  color: Colors.red,
                ),
              ],
            ),
          ),

          /// View Models export [Body]
          body: Stack(
            children: [
              SvgPicture.asset(
                'asset/images/log.svg',
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(
                          backgroundColor: Colors.amberAccent,
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.favorite),
                              Text(
                                'Like',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          action: SnackBarAction(
                            label: 'FCS IBB',
                            textColor: Colors.black,
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: const Text('Snack'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
