import 'package:flutter/material.dart';
import 'package:portoghozi/widgets/app_show_case.dart';

class MyProjectsPage extends StatelessWidget {
  const MyProjectsPage({Key? key}) : super(key: key);

  Widget largeScreenProjects() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Flexible(
          flex: 1,
          child: AppShowCase(
              namaApl: 'Location-Based Employee Attendance Mobile App'),
        ),
        Flexible(
          flex: 1,
          child: AppShowCase(namaApl: 'School Payment Mobile App'),
        ),
        Flexible(
          flex: 1,
          child: AppShowCase(namaApl: 'Crowdfunding App'),
        )
      ],
    );
  }

  Widget smallScreenProjects() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        AppShowCase(namaApl: 'Location-Based Employee Attendance Mobile App'),
        SizedBox(height: 20),
        AppShowCase(namaApl: 'School Payment Mobile App'),
        SizedBox(height: 20),
        AppShowCase(namaApl: 'Crowdfunding App')
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
