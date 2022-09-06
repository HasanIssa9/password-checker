import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model.dart';
import '../view/card.dart';

class CardsList extends StatelessWidget {
  const CardsList({
    Key? key,
  }) : super(key: key);

  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return PageView(
        controller: controller,
        onPageChanged: (x) {
          currentPage.value = x;
        },
        children: [
          ListView(
            controller: ScrollController(),
            children: Note.notes
                .where((e) => !e.isDone.value)
                .map((e) => MyCard(
                      note: e,
                    ))
                .toList(),
          ),
          ListView(
            controller: ScrollController(),
            children: Note.notes
                .where((e) => e.isDone.value)
                .map((e) => MyCard(
                      note: e,
                    ))
                .toList(),
          ),
        ],
      );
    });
  }
}
