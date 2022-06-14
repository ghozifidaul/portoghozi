import 'package:flutter/material.dart';
import 'package:portoghozi/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ghozi Fidaul',
      theme: ThemeData(
        fontFamily: 'SourceCodePro',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 64,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
          bodyText1: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
