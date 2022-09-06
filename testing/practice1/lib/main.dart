import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../card2/card2.dart';
import '../card1/card1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uni-coding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark
        ),
        backgroundColor: const Color(0xfff0f0f0),
        elevation: 0,
        toolbarHeight: 20,
      ),
      backgroundColor: const Color(0xfff0f0f0),
      body: Column(
        children:  const [
          MyCard1(),
          Spacer(),
          MyCard2()
        ],
      )
    );
  }
}






