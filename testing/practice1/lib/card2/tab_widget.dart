import 'package:flutter/material.dart';
import '../card2/model.dart';

class MyTab extends StatelessWidget {
  const MyTab({Key? key, required this.data,}) : super(key: key);

  final TabData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
            data.icon,
            color: TabData.selectedTab == data.label ? Colors.blue : Colors.grey
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(data.label, style: TextStyle(
              color: TabData.selectedTab == data.label ? Colors.blue : Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),),
        )
      ],
    );
  }
}