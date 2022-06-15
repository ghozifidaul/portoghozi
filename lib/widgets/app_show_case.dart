import 'package:flutter/material.dart';

class AppShowCase extends StatelessWidget {
  AppShowCase({
    Key? key,
    required this.namaApl,
    required this.logoSize,
    this.appLogoLink,
  }) : super(key: key);

  final String namaApl;
  final double logoSize;
  String? appLogoLink;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: 200,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 10,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: appLogoLink == null ? Container() : Image.asset(appLogoLink!),
        ),
        const SizedBox(height: 20),
        Text(
          namaApl,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
