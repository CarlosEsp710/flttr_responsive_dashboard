import 'package:flutter/material.dart';

import 'drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerListTile(
              text: 'Dashboard',
              icon: 'assets/icons/menu_dashbord.svg',
              onTap: () {},
            ),
            DrawerListTile(
              text: 'Transactions',
              icon: 'assets/icons/menu_tran.svg',
              onTap: () {},
            ),
            DrawerListTile(
              text: 'Tasks',
              icon: 'assets/icons/menu_task.svg',
              onTap: () {},
            ),
            DrawerListTile(
              text: 'Store',
              icon: 'assets/icons/menu_store.svg',
              onTap: () {},
            ),
            DrawerListTile(
              text: 'Notifications',
              icon: 'assets/icons/menu_notification.svg',
              onTap: () {},
            ),
            DrawerListTile(
              text: 'Profile',
              icon: 'assets/icons/menu_profile.svg',
              onTap: () {},
            ),
            DrawerListTile(
              text: 'Settings',
              icon: 'assets/icons/menu_setting.svg',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
