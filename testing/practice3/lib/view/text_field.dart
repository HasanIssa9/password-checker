import 'package:flutter/material.dart';
import '../model.dart';
import 'package:get/get.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({
    Key? key,
    required this.myController,
  }) : super(key: key);

  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      onChanged: (x) {
        Note.typed.value = x;
      },
      style: const TextStyle(fontSize: 20),
      maxLines: 5,
      minLines: 1,
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black.withOpacity(0.07),
        hintText: 'Type note ...',
        prefixIcon: const Icon(Icons.note_add, color: Colors.grey),
        suffixIcon: TextButton(
          child: Obx(() {
            return Icon(
              Icons.send,
              color: Note.typed.isEmpty ? Colors.grey : Colors.blue,
            );
          }),
          onPressed: () {
            Note.add(myController.text);
            myController.clear();
          },
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
      ),
    );
  }
}
