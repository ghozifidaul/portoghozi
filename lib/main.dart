import 'package:flutter/material.dart';
import 'package:portoghozi/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // precacheImage(const AssetImage('assets/images/bg.jpg'), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ghozi Fidaul Portfolio Website',
      theme: ThemeData(
        fontFamily: 'SourceCodePro',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ghozi Portfolio Website Homepage'),
    );
  }
}
