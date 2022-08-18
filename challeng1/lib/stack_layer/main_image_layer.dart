import 'package:flutter/material.dart';

class ImageLayer1 extends StatelessWidget {
  const ImageLayer1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/image1.png',
      scale: 0.1,
    );
  }
}