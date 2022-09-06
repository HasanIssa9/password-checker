import 'package:flutter/material.dart';
import '../card2/model.dart';
import 'tab_widget.dart';

class MyCard2 extends StatefulWidget {
  const MyCard2({Key? key}) : super(key: key);

  @override
  State<MyCard2> createState() => _MyCard2State();
}

class _MyCard2State extends State<MyCard2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: TabData.buttons
            .map((e) => TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  TabData.selectedTab = e.label;
                  setState(() {});
                },
                child: MyTab(
                  data: e,
                )))
            .toList(),
      ),
    );
  }
}
