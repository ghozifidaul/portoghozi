import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class BtnMenu extends StatelessWidget {
  const BtnMenu({
    Key? key,
    required this.ontap,
    required this.onhover,
    required this.outlinecolor,
    required this.textcolor,
    required this.btntext,
  }) : super(key: key);

  final Function() ontap;
  final Function(bool) onhover;
  final Color outlinecolor, textcolor;
  final String btntext;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      onHover: onhover,
      child: DottedBorder(
        color: outlinecolor,
        strokeWidth: 3,
        dashPattern: const [8, 6],
        radius: const Radius.circular(8.0),
        borderType: BorderType.RRect,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4.0,
            horizontal: 20.0,
          ),
          child: Text(
            btntext,
            style: TextStyle(
              color: textcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
