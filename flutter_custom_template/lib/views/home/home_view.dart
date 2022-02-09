import 'package:flutter/material.dart';
import 'package:flutter_custom_template/theme/theme.dart';
import 'package:flutter_custom_template/utils/paddings.dart';
import 'package:flutter_custom_template/views/home/widgets/bigCard.dart';
import 'package:flutter_custom_template/widgets/smart_widgets/arrow_card_widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScrollController _scrollController;
  double top = 0;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (BuildContext context, HomeViewModel viewModel, Widget _) {
        return Scaffold(
          body: Stack(
            children: [
              CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    stretch: true,
                    expandedHeight: MediaQuery.of(context).size.height * 0.45,
                    flexibleSpace: LayoutBuilder(
                      builder: (context, constraints) {
                        top = constraints.biggest.height;

                        return FlexibleSpaceBar(
                          background: customAppBar(context, size),
                          centerTitle: true,
                          title: AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: top < 200 ? 1 : 0,
                            child: Row(
                              children: const [
                                SizedBox(
                                  height: 12,
                                ),
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Text("Dorata"),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: ListView(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                          ),
                          child: Text('My Courses',
                              style: ThemeYellow()
                                  .yellowTheme
                                  .textTheme
                                  .headline4),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              BigCard(
                                size: size,
                              ),
                              BigCard(
                                size: size,
                              ),
                              BigCard(
                                size: size,
                              ),
                              BigCard(
                                size: size,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Text('My Favourites',
                              style: ThemeYellow()
                                  .yellowTheme
                                  .textTheme
                                  .headline4),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              BigCard(
                                size: size,
                              ),
                              BigCard(
                                size: size,
                              ),
                              BigCard(
                                size: size,
                              ),
                              BigCard(
                                size: size,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Container bg(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        image: const DecorationImage(
          image: AssetImage(
            'asset/images/bg.png',
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Stack customAppBar(BuildContext context, Size size) {
    return Stack(
      children: [
        bg(context),
        Container(
          height: MediaQuery.of(context).size.height / 2,
          color: Colors.white10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Padding(
                padding: const EdgeInsets.all(MainPadding.defaultPaddingLow),
                child: Text('Hello Dorata!',
                    style: ThemeYellow().yellowTheme.textTheme.headline5),
              ),
              Padding(
                padding: const EdgeInsets.all(MainPadding.defaultPaddingLow),
                child: Text(
                  'Have a nice day!',
                  style: ThemeYellow().yellowTheme.textTheme.headline2,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () {
                    print('TEST');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(
                          MainPadding.defaultPaddingNormal),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          ArrowCardWidget(
                            bgColor: Colors.lightBlue.shade200,
                            size: size,
                            ratio: 8,
                            circularRatio: 25,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Today\'s Medidation',
                                style: ThemeYellow()
                                    .yellowTheme
                                    .textTheme
                                    .bodyText2,
                              ),
                              Text(
                                'Compassion in Life',
                                style: ThemeYellow()
                                    .yellowTheme
                                    .textTheme
                                    .headline4,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
