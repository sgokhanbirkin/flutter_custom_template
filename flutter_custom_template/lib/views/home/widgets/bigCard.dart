import 'package:flutter/material.dart';
import 'package:flutter_custom_template/theme/theme.dart';

class BigCard extends StatelessWidget {
  Size size;
  BigCard({
    Key key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
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
            ),
          ),
        ),
        Text('Title', style: ThemeYellow().yellowTheme.textTheme.headline4),
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
