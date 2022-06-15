import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatefulWidget {
  const Socials({Key? key}) : super(key: key);

  @override
  State<Socials> createState() => _SocialsState();
}

class _SocialsState extends State<Socials> {
  bool isGithubHovered = false;
  bool isTwitterHovered = false;

  final Uri urlTwitter = Uri.parse('https://twitter.com/ghozifidaulh');
  final Uri urlGithub = Uri.parse('https://github.com/ghozifidaul');

  launchTwitterUrl() async {
    await launchUrl(urlTwitter);
  }

  launchGitHubUrl() async {
    await launchUrl(urlGithub);
  }

  Widget twitterLink() {
    return InkWell(
      onTap: () => launchTwitterUrl(),
      onHover: (value) {
        setState(() {
          isTwitterHovered = value;
        });
      },
      child: Text(
        MediaQuery.of(context).size.width > 700
            ? 'twitter.com/ghozifidaul'
            : '@ghozifidaul',
        style: TextStyle(
          fontSize: 18,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          decoration:
              isTwitterHovered ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
    );
  }

  Widget githubLink() {
    return InkWell(
      onTap: () => launchGitHubUrl(),
      onHover: (value) {
        setState(() {
          isGithubHovered = value;
        });
      },
      child: Text(
        MediaQuery.of(context).size.width > 700
            ? 'github.com/ghozifidaul'
            : 'ghozifidaul',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          decoration:
              isGithubHovered ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
    );
  }

  Widget largeScreenSocials() {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Image.asset('assets/images/twitterlogo.png'),
        ),
        const SizedBox(width: 20),
        twitterLink(),
        const SizedBox(width: 20),
        SizedBox(
          width: 50,
          height: 50,
          child: Image.asset('assets/images/githubicon.png'),
        ),
        const SizedBox(width: 20),
        githubLink(),
      ],
    );
  }

  Widget smallScreenSocials() {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/images/twitterlogo.png'),
            ),
            const SizedBox(width: 20),
            twitterLink(),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/images/githubicon.png'),
            ),
            const SizedBox(width: 20),
            githubLink(),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '> Socials',
          style: Theme.of(context).textTheme.headline2,
        ),
        const SizedBox(height: 20),
        MediaQuery.of(context).size.width > 700
            ? largeScreenSocials()
            : smallScreenSocials(),
      ],
    );
  }
}
