import 'package:portoghozi/components/header_menu.dart';
import 'package:flutter/material.dart';

class HeaderTerminal extends StatefulWidget {
  const HeaderTerminal({Key? key}) : super(key: key);

  @override
  State<HeaderTerminal> createState() => _HeaderTerminalState();
}

class _HeaderTerminalState extends State<HeaderTerminal>
    with SingleTickerProviderStateMixin {
  bool isHoverClose = false;
  bool isHoverMinimize = false;
  bool isHoverMaximize = false;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 10.0,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        color: Color(0xFF4A4545),
      ),
      child: Row(
        children: [
          HeaderMenu(
            onHover: (val) {
              setState(() {
                isHoverClose = val;
              });
            },
            icon: isHoverClose
                ? const Icon(
                    Icons.close,
                    size: 13,
                  )
                : Container(),
            warna: Colors.red,
          ),
          const SizedBox(width: 5),
          HeaderMenu(
            onHover: (val) {
              setState(() {
                isHoverMinimize = val;
              });
            },
            icon: isHoverMinimize
                ? const Center(
                    child: Icon(
                      Icons.minimize,
                      size: 13,
                    ),
                  )
                : Container(),
            warna: Colors.yellow,
          ),
          const SizedBox(width: 5),
          HeaderMenu(
            onHover: (val) {
              setState(() {
                isHoverMaximize = val;
              });
            },
            icon: isHoverMaximize
                ? const Center(
                    child: Icon(
                      Icons.maximize,
                      size: 13,
                    ),
                  )
                : Container(),
            warna: Colors.green,
          ),
        ],
      ),
    );
  }
}
