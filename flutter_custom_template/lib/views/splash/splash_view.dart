import 'package:flutter/material.dart';
import 'package:flutter_custom_template/utils/network.dart';
import 'package:flutter_custom_template/views/splash/widgets/app_bar_actions.dart';
import 'package:flutter_custom_template/widgets/general_widgets/custom_text_widget.dart';
import 'package:flutter_custom_template/widgets/general_widgets/loader_widget.dart';
import 'package:flutter_custom_template/widgets/general_widgets/shor_image_network.dart';

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
          ),

          /// View Models export [Body]
          body: const CustomSplash(),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}

class CustomSplash extends StatelessWidget {
  const CustomSplash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          /// Splash Screen Title [CustomTextWidget]
          CustomTextWidget(label: AppLocalizations.of(context).loading_label),
          ImageNetwork(
            link: SplashScreenNetwork().splashScrenNetwork,
            size: 200,
            fit: BoxFit.fill,
          ),
          const CustomLoader(
            color: Colors.white,
            strokeWidth: 5,
          ),
        ],
      ),
    );
  }
}
