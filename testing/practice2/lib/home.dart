import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController myController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'.toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 22),),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        ),
        backgroundColor: const Color(0xfff0f0f0),
        elevation: 0,
      ),
      backgroundColor: const Color(0xfff0f0f0),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: myController,
              style: const TextStyle(fontSize: 20),
              onChanged: (x) {
                setState(() {});
              },
              maxLines: 5,
              minLines: 1,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black.withOpacity(0.07),
                hintText: 'Type note ...',
                prefixIcon: const Icon(Icons.note_add, color: Colors.grey),
                suffixIcon: TextButton(
                  child: Icon(
                    Icons.send,
                    color:
                        myController.text.isEmpty ? Colors.grey : Colors.blue,
                  ),
                  onPressed: () {
                    Note.add(myController.text);
                    myController.clear();
                    setState(() {});
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
            ),
            Expanded(
              child: ListView(
                controller: scrollController,
                children: Note.notes.map((e) => Container(
                          width: double.maxFinite,
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: e.color,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.title,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black.withOpacity(0.8),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                e.text,
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Note.clear();
          setState(() {});
        },
        child: const Icon(Icons.delete),
      ),
    );
  }
}

