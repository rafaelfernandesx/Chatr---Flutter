import 'package:chatr/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatrApp());
}

class ChatrApp extends StatelessWidget {
  const ChatrApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}
