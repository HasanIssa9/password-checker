import 'dart:math';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Note {
  final RxString text;
  final Rx<String> title;
  final Rx<Color> color;
  final RxBool isDone;

  Note(String data, [bool? isDone])
      ///Set title
      : isDone = (isDone??false).obs,
        title = "Note ${notes.length + 1}".obs,
        ///Set random color
        color = Colors.accents.elementAt(Random().nextInt(Colors.accents.length)).shade100.obs,
        text = data.obs;

  makeAsDone(){
    isDone.value = true;
  }

  static RxString typed = ''.obs;

  static RxList<Note> notes = <Note>[].obs;

  static add(String note){
    Note data = Note(note);
    notes.add(data);
  }

  static clear(){
    notes.clear();
  }
}
