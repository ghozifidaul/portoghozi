import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double photoSize = 300;

    return Container(
      width: photoSize,
      height: photoSize,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/images/foto_profil.jpg'),
            fit: BoxFit.cover,
          )),
    );
  }
}
