import 'package:flutter/material.dart';
import 'package:portoghozi/components/btn_menu.dart';

class RowBTNMenu extends StatelessWidget {
  const RowBTNMenu({
    Key? key,
    required this.onTapAboutMe,
    required this.onTapMyProjects,
    required this.onHoverAboutMe,
    required this.onHoverMyProjects,
    required this.aboutMeColor,
    required this.myProjectsColor,
  }) : super(key: key);

  final Function() onTapAboutMe, onTapMyProjects;
  final Function(bool) onHoverAboutMe, onHoverMyProjects;
  final Color aboutMeColor, myProjectsColor;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: widthScreen > 700
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      children: [
        BtnMenu(
          ontap: onTapAboutMe,
          onhover: onHoverAboutMe,
          outlinecolor: aboutMeColor,
          textcolor: aboutMeColor,
          btntext: 'About Me',
        ),
        const SizedBox(width: 20),
        BtnMenu(
          ontap: onTapMyProjects,
          onhover: onHoverMyProjects,
          outlinecolor: myProjectsColor,
          textcolor: myProjectsColor,
          btntext: 'My Projects',
        ),
      ],
    );
  }
}
