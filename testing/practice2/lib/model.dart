import 'dart:math';

import 'package:flutter/material.dart';

class Note {
  final String text;
  final String title;
  final Color color;

  Note(this.text)
      ///Set title
      : title = "Note ${notes.length + 1}",
        ///Set random color
        color = Colors.accents.elementAt(Random().nextInt(Colors.accents.length)).shade100;

  static List<Note> notes = [];

  static add(String note){
    notes.add(Note(note));
  }

  static clear(){
    notes.clear();
  }
}
