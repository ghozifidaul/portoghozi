import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> offsetAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return SlideTransition(
      position: offsetAnimation,
      child: FadeTransition(
        opacity: _controller,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
            color: const Color(0xFF4A4545),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: const [
              Text(
                'I have 2+ years of experience working using Flutter. I have built and published my apps to Google PlayStore and Apple AppStore. You can see all apps that i built on My Projects section.',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'I also have some experience using other technology such as React, React Native, PHP, Laravel, Python, Django, MySQL, and more.',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
