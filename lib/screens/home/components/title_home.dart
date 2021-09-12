import 'package:flutter/material.dart';
import 'package:ui_store_flutter/constant.dart';


class TitleHome extends StatelessWidget {
  const TitleHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rendi Collections",
          style: TextStyle(
            color: kTextColor,
            fontSize: 36,
            fontWeight: FontWeight.w700
          ),
        ),
        Text(
          "The best of Sneakers, all in one place.",
          style: TextStyle(
            color: kSubColor,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
        ),
      ],
    );
  }
}
