import 'package:flutter/material.dart';
import 'package:flutter_custom_template/theme/theme.dart';
import 'package:flutter_custom_template/widgets/smart_widgets/arrow_card_widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BigCard extends StatelessWidget {
  Size size;
  BigCard({
    Key key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.2,
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    image: const DecorationImage(
                      image: AssetImage('asset/images/bg.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ArrowCardWidget(
                    size: size,
                    bgColor: Colors.white54,
                    ratio: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: size.width / 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mindfluness for Stress',
                  style: ThemeYellow().yellowTheme.textTheme.headline4),
              SizedBox(height: size.width / 100),
              Text('2 h 54 min',
                  style: ThemeYellow().yellowTheme.textTheme.bodyText2),
            ],
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.yellowAccent.shade700,
            inactiveTrackColor: Colors.grey,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
          ),
          child: Slider(
            value: 6,
            min: 0,
            max: 7,
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
