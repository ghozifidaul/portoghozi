import 'package:flutter/material.dart';

class ProfileDesc extends StatelessWidget {
  const ProfileDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Ghozi Fidaul',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 48,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'I am a software developer based in Indonesia. i have 2+ years of experience working using Flutter.',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 20),
        Text(
          'I also have some basic knowledge and a litte bit experience using React, React Native, PHP, Laravel, Python, Django, and more.',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
