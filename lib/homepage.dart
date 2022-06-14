import 'package:flutter/material.dart';
import 'package:portoghozi/screens/aboutme.dart';
import 'package:portoghozi/screens/projects.dart';
import 'package:portoghozi/screens/socials.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: widthScreen > 700 ? 200 : 20,
            vertical: widthScreen > 700 ? 30 : 20,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/cool_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(widthScreen > 700 ? 50 : 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                const AboutMePage(),
                const MyProjectsPage(),
                Socials(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
