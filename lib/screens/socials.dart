import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatelessWidget {
  Socials({Key? key}) : super(key: key);

  final Uri urlTwitter = Uri.parse('https://twitter.com/ghozifidaulh');
  final Uri urlGithub = Uri.parse('https://github.com/ghozifidaul');

  launchTwitterUrl() async {
    await launchUrl(urlTwitter);
  }

  launchGitHubUrl() async {
    await launchUrl(urlGithub);
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
        GestureDetector(
          onTap: () => launchTwitterUrl(),
          child: const Text(
            'twitter.com/ghozifidaul',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 50,
          height: 50,
          child: Image.asset('assets/images/githubicon.png'),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () => launchGitHubUrl(),
          child: const Text(
            'github.com/ghozifidaul',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
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
            GestureDetector(
              onTap: () => launchTwitterUrl(),
              child: const Text(
                '@ghozifidaul',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
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
            GestureDetector(
              onTap: () => launchGitHubUrl(),
              child: const Text(
                'ghozifidaul',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
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
