import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.onHover,
    required this.icon,
    required this.warna,
  }) : super(key: key);

  final Function(bool) onHover;
  final Widget icon;
  final Color? warna;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: onHover,
      child: Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: warna,
        ),
        child: icon,
      ),
    );
  }
}
