import 'package:flutter/material.dart';
import 'package:portoghozi/components/header.dart';
import 'package:portoghozi/components/profile.dart';
import 'package:portoghozi/components/row_btn_menu.dart';
import 'package:portoghozi/pages/aboutme.dart';
import 'package:portoghozi/pages/projects.dart';

class TerminalView extends StatefulWidget {
  const TerminalView({Key? key}) : super(key: key);

  @override
  State<TerminalView> createState() => _TerminalViewState();
}

class _TerminalViewState extends State<TerminalView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  int selectedIndex = 0;
  late Animation<Offset> offsetAnimation;
  bool isHoverAboutMe = false;
  bool isHoverMyProjects = false;

  List<Widget> pagesList = const <Widget>[
    AboutMe(),
    Projects(),
  ];

  onTapAboutMe() {
    setState(() {
      selectedIndex = 0;
    });
  }

  onHoverAboutMe(val) {
    setState(() {
      isHoverAboutMe = val;
    });
  }

  onTapMyProjects() {
    setState(() {
      selectedIndex = 1;
    });
  }

  onHoverMyProjects(val) {
    setState(() {
      isHoverMyProjects = val;
    });
  }

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    offsetAnimation = offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    ));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationController.forward();
    double widthscreen = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            'Image by Inés Álvarez Fdez on unsplash',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        SlideTransition(
          position: offsetAnimation,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: widthscreen > 700 ? 50.0 : 20.0,
              horizontal: widthscreen > 1400
                  ? 400
                  : widthscreen > 700
                      ? 300
                      : 20.0,
            ),
            child: Column(
              children: [
                const HeaderTerminal(),
                Flexible(
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    padding: EdgeInsets.all(widthscreen > 700 ? 30.0 : 20.0),
                    decoration: const BoxDecoration(
                        color: Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(4, 4),
                            spreadRadius: 1,
                            blurRadius: 150,
                          )
                        ]),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Profile(),
                          SizedBox(height: widthscreen > 700 ? 50 : 20),
                          RowBTNMenu(
                            onTapAboutMe: onTapAboutMe,
                            onTapMyProjects: onTapMyProjects,
                            onHoverAboutMe: onHoverAboutMe,
                            onHoverMyProjects: onHoverMyProjects,
                            aboutMeColor: isHoverAboutMe || selectedIndex == 0
                                ? Colors.green
                                : Colors.white,
                            myProjectsColor:
                                isHoverMyProjects || selectedIndex == 1
                                    ? Colors.orange
                                    : Colors.white,
                          ),
                          pagesList[selectedIndex],
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
