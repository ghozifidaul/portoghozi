import 'package:portoghozi/components/btn_menu.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> offsetAnimation;
  bool isHoverOnProject = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));
  }

  Widget imageProject1() => Image.asset(
        'assets/images/login_presensi.png',
        height: 250,
      );

  Widget image2Project1() => Image.asset(
        'assets/images/halaman_presensi_2.png',
        height: 250,
      );

  Widget btnSeeProject() => BtnMenu(
        ontap: () => launchUrl(Uri.parse(
            'https://github.com/ghozifidaul/employee-attendance-mobile-app')),
        onhover: (val) {
          setState(() {
            isHoverOnProject = val;
          });
        },
        outlinecolor: isHoverOnProject ? Colors.blue : Colors.white,
        textcolor: isHoverOnProject ? Colors.blue : Colors.white,
        btntext: 'See Project >>',
      );

  Widget titleTextProj1(double? textSize) => Text(
        'Location-based employee attendance mobile app',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: textSize,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget descProj() => const Text(
        'This app is an Mobile App i made for sultan agung islamic university (my almamater). Main goal of this app is to make attendance process easier for the employees.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      );

  Widget rowProjectLargeScreen() {
    return Row(
      children: [
        imageProject1(),
        const SizedBox(width: 10),
        image2Project1(),
        const SizedBox(width: 10),
        Flexible(
          child: Column(
            children: [
              titleTextProj1(18),
              const SizedBox(height: 20),
              descProj(),
              const SizedBox(height: 20),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: btnSeeProject(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget columnProjectCardSmallScreen() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageProject1(),
            const SizedBox(width: 10),
            image2Project1(),
          ],
        ),
        const SizedBox(height: 10),
        titleTextProj1(16),
        const SizedBox(height: 10),
        descProj(),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: btnSeeProject(),
          ),
        ),
      ],
    );
  }

  projectCard() => Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(top: 20.0),
        height: MediaQuery.of(context).size.width > 700 ? 270 : 500,
        decoration: BoxDecoration(
          color: const Color(0xFF4A4545),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: MediaQuery.of(context).size.width > 700
            ? rowProjectLargeScreen()
            : columnProjectCardSmallScreen(),
      );

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
        child: Column(
          children: [
            projectCard(),
          ],
        ),
      ),
    );
  }
}
