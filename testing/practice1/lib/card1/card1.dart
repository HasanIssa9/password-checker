import 'package:flutter/material.dart';
import '../card1/image.dart';

import 'icon.dart';
import 'my_text.dart';

class MyCard1 extends StatelessWidget {
  const MyCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: const [
          HeadingImage(),
          Expanded(
            child: MyTexts(),
          ),
          MyIcon()
        ],
      ),
    );
  }
}