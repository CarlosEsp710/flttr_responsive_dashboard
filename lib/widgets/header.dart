import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/menu_controller.dart';
import '../responsive.dart';
import 'profile_card.dart';
import 'search_field.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _menuController = Get.find<MenuController>();

    return Row(
      children: <Widget>[
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: () => _menuController.controlMenu(),
            icon: const Icon(Icons.menu),
            color: Colors.white,
          ),
        if (!Responsive.isMobile(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(child: SearchField()),
        const ProfileCard(),
      ],
    );
  }
}
