import 'package:flutter/material.dart';
import 'package:portoghozi/widgets/profile_desc.dart';
import 'package:portoghozi/widgets/profile_photo.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  Widget largeScreenAboutMe() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          ProfilePhoto(),
          SizedBox(width: 30),
          Flexible(child: ProfileDesc()),
        ],
      ),
    );
  }

  Widget smallScreenAboutMe() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          ProfilePhoto(),
          SizedBox(height: 10),
          ProfileDesc(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 700) {
      return largeScreenAboutMe();
    } else {
      return smallScreenAboutMe();
    }
  }
}
