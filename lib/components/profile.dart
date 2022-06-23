import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  mailToGhozi() async {
    final mailToGhozi = Mailto(to: ['ghozifidaul@gmail.com']).toString();
    if (await canLaunchUrl(Uri.parse(mailToGhozi))) {
      // print(mailToGhozi);
      await launchUrl(Uri.parse(mailToGhozi));
    }
  }

  Widget profilePict() => DottedBorder(
        color: Colors.white,
        strokeWidth: 3,
        dashPattern: const [10, 6],
        borderType: BorderType.Circle,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(
              'assets/images/foto_profil.jpg',
            ),
          ),
        ),
      );

  Widget myName(double titleTextSize) => Text(
        'Ghozi Fidaul',
        style: TextStyle(
          color: Colors.white,
          fontSize: titleTextSize,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget myDesc(
    TextAlign textAlign,
    double textSize,
  ) =>
      Text(
        'I am a mobile app developer based in Indonesia.',
        textAlign: textAlign,
        style: TextStyle(
          color: Colors.white,
          fontSize: textSize,
        ),
      );

  Widget largeScreenProfile(BuildContext context) => Row(
        children: [
          profilePict(),
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myName(36),
                myDesc(
                  TextAlign.start,
                  18,
                ),
                const SizedBox(height: 20),
                rowSocials(context),
              ],
            ),
          )
        ],
      );

  Widget rowSocials(BuildContext context) => Row(
        mainAxisAlignment: MediaQuery.of(context).size.width > 700
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: [
          InkWell(
            onHover: (val) {},
            onTap: (() =>
                launchUrl(Uri.parse('https://twitter.com/ghozifidaulh'))),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/twitterlogo.png'),
              ),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onHover: (val) {},
            onTap: () => launchUrl(Uri.parse('https://github.com/ghozifidaul')),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/githubicon.png'),
              ),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onHover: (val) {},
            onTap: () => mailToGhozi(),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/gmaillogo.png'),
              ),
            ),
          ),
        ],
      );

  Widget smallScreenProfile(BuildContext context) => Column(
        children: [
          profilePict(),
          const SizedBox(height: 10),
          myName(28),
          const SizedBox(height: 10),
          myDesc(
            TextAlign.center,
            18,
          ),
          const SizedBox(height: 10),
          rowSocials(context),
        ],
      );

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    if (widthScreen > 700) {
      return largeScreenProfile(context);
    } else {
      return smallScreenProfile(context);
    }
  }
}
