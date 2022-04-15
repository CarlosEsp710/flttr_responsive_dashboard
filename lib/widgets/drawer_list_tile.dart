import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTile extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onTap;

  const DrawerListTile({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        icon,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        text,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
