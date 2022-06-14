import 'package:flutter/material.dart';

class AppShowCase extends StatelessWidget {
  const AppShowCase({
    Key? key,
    required this.namaApl,
  }) : super(key: key);

  final String namaApl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              width: 10,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
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
