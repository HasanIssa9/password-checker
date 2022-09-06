import 'package:flutter/material.dart';

import '../card1/my_text.dart';

class MyCard3 extends StatelessWidget {
  const MyCard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.green.shade300,
            child: Icon(Icons.image_outlined,
                color: Colors.white.withOpacity(0.7), size: 36),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Container(
                 padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text('Labal'),
                ),
                MyTexts(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(onPressed: () {}, child: Text('Action')),
                    ElevatedButton(onPressed: () {}, child: Text('Action'))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
