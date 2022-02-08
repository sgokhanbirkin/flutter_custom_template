import 'package:flutter/material.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
