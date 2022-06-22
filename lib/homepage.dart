import 'package:portoghozi/components/btn_menu.dart';
import 'package:portoghozi/components/header.dart';
import 'package:portoghozi/pages/aboutme.dart';
import 'package:portoghozi/pages/projects.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:portoghozi/terminal_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    super.initState();
  }

  // Photo by <a href="https://unsplash.com/@powwpic?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Inés Álvarez Fdez</a> on <a href="https://unsplash.com/s/photos/desktop-wallpaper?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage('assets/images/bg.jpg'), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    animationController.forward();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const TerminalView(),
      ),
    );
  }
}
