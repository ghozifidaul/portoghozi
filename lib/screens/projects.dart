import 'package:flutter/material.dart';
import 'package:portoghozi/widgets/app_show_case.dart';

class MyProjectsPage extends StatefulWidget {
  const MyProjectsPage({Key? key}) : super(key: key);

  @override
  State<MyProjectsPage> createState() => _MyProjectsPageState();
}

class _MyProjectsPageState extends State<MyProjectsPage> {
  bool isHovered = false;

  Widget largeScreenProjects() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: AppShowCase(
            namaApl: 'Location-Based Employee Attendance Mobile App',
            appLogoLink: 'assets/images/logo_unissula_presensi.png',
            logoSize: 300,
          ),
        ),
        // Flexible(
        //   flex: 1,
        //   child: AppShowCase(namaApl: 'School Payment Mobile App'),
        // ),
        // Flexible(
        //   flex: 1,
        //   child: AppShowCase(namaApl: 'Crowdfunding App'),
        // ),
      ],
    );
  }

  Widget smallScreenProjects() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppShowCase(
          namaApl: 'Location-Based Employee Attendance Mobile App',
          appLogoLink: 'assets/images/logo_unissula_presensi.png',
          logoSize: 300,
        ),
        // SizedBox(height: 20),
        // AppShowCase(namaApl: 'School Payment Mobile App'),
        // SizedBox(height: 20),
        // AppShowCase(namaApl: 'Crowdfunding App')
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '> Projects',
          style: Theme.of(context).textTheme.headline2,
        ),
        const SizedBox(height: 20),
        MediaQuery.of(context).size.width > 700
            ? largeScreenProjects()
            : smallScreenProjects(),
        const SizedBox(height: 20),
      ],
    );
  }
}
